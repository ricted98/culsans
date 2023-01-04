// TestName: read_non-cacheable_locations
// Feature: Each core reads a different non-cacheable memory location
// TestObjective:
// TestPrerequisite: none
// TestSequence:
// PassCriteria: the memory operations succeed
// ID: PROJ-??

#include <stdint.h>

#define number_of_cache_lines 16384 // how big is the cache?
#define v_type uint64_t
#define array_length 2

struct cacheline_t{
  v_type cacheline[array_length];
};

struct cacheline_t non_cached_cachelines[number_of_cache_lines] __attribute__((section(".cached_region_1")));

void read_non_cacheable_locations()
{
    uint64_t mhartid;
    asm volatile ("csrr %[reg], mhartid" : [reg] "=r" (mhartid));

    v_type core_local_variable = 0;

    if(mhartid == 0){
        core_local_variable = 1;
        for(v_type i = 0; i < number_of_cache_lines; i++){
  	        for(int j = 0; j < array_length; j++){
  		        non_cached_cachelines[i].cacheline[j] = i+1;
      	    }
        }
    }
    if(mhartid == 0){ // same core
        core_local_variable = 2;
        for(v_type i = 0; i < number_of_cache_lines; i++){
            for(int j = 0; j < array_length; j++){
  	        	core_local_variable = non_cached_cachelines[i].cacheline[j];
      	    }   
        }
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
      return 0;
  }else{
    { asm volatile ("wfi"); }
  }
    return 1;
}
