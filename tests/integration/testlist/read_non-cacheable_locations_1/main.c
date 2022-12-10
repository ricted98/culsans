// TestName: read_non-cacheable_locations
// Feature: Each core reads a different non-cacheable memory location
// TestObjective:
// TestPrerequisite: none
// TestSequence:
// PassCriteria: the memory operations succeed
// ID: PROJ-??

#include <stdint.h>

//#define number_of_cache_lines 32764

//struct cacheline_t{
//  uint64_t cacheline[2];
//};

//struct cacheline_t non_cached_cachelines[number_of_cache_lines] //__attribute__((section(".non_cached_region")));

#define number_of_elements 9
#define v_type uint8_t

v_type variable_A[number_of_elements] __attribute__((section(".non_cached_region")));
v_type variable_B[number_of_elements] __attribute__((section(".non_cached_region")));
//uint64_t variable_C __attribute__((section(".cached_region")));

void read_non_cacheable_locations()
{
  uint64_t mhartid;
  asm volatile ("csrr %[reg], mhartid" : [reg] "=r" (mhartid));

  v_type core_local_variable = 0;

  if(mhartid == 0){
      core_local_variable = 1;
      for(int i = 0; i < number_of_elements; i++){
      	variable_A[i] = core_local_variable;
      }
      //non_cached_cachelines[0].cacheline[0] = core_local_variable;
  }
  if(mhartid == 1){
      core_local_variable = 2;
      for(int i = 0; i < number_of_elements; i++){
      	variable_B[i] = core_local_variable;
      }
      //non_cached_cachelines[1].cacheline[0] = core_local_variable;
  }
}

void thread_entry(int cid, int nc){ // Core ID, Number of Cores

   static volatile int count;

   while(__sync_fetch_and_add(&count, 0) != cid)
     ;

   // critical section
   read_non_cacheable_locations();

   __sync_fetch_and_add(&count, 1);

   while(__sync_fetch_and_add(&count, 0) != nc)
     ;

   if (cid == 0)
     count = 0;

   __sync_synchronize();
}


int main()
{
  uint64_t mhartid;
  asm volatile ("csrr %[reg], mhartid" : [reg] "=r" (mhartid));

  if(mhartid == 1){
    if((variable_A[0] == 1)&&(variable_B[0] == 2)){
    //if((non_cached_cachelines[0].cacheline[0] == 1)&&(non_cached_cachelines[1].cacheline[0] == 2)){
      return 0;
    }
  }else{
    { asm volatile ("wfi"); }
  }
    return 1;
}
