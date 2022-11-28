// TestName: basic_connectivity
// Feature: Each core accesses a different memory location: write and readback
// TestObjective: verify that multiple cores have memory acces without cache coherency
// TestPrerequisite: none
// TestSequence: each core reads and writes different memory location
// PassCriteria: the memory operations succeed
// ID: PROJ-??

#include <stdint.h>

volatile uint64_t variable_A = 2;
volatile uint64_t variable_B = 3;
// global variables are in shared memory space


void basic_connectivity()
{
  uint64_t mhartid;
  asm volatile ("csrr %[reg], mhartid" : [reg] "=r" (mhartid));

  uint64_t core_local_variable = 0;

  if(mhartid == 1){
      core_local_variable =  variable_A;
      variable_A = core_local_variable * core_local_variable;
  }
  if(mhartid == 0){
      core_local_variable =  variable_B;
      variable_B = core_local_variable * core_local_variable;
  }
}

void thread_entry(int cid, int nc){ // Core ID, Number of Cores

  static volatile int count;

   __sync_synchronize();

   while(__sync_fetch_and_add(&count, 0) != cid)
     ;

   // critical section
   basic_connectivity();

   if (__sync_fetch_and_add(&count, 1) == nc-1)
       count = 0;

   __sync_synchronize();
}


int main()
{
  uint64_t mhartid;
  asm volatile ("csrr %[reg], mhartid" : [reg] "=r" (mhartid));

  if(mhartid == 0){
    if((variable_A == 4)&&(variable_B == 9)){
      return 0;
    }
  }else{
    { asm volatile ("wfi"); }
  }
    return 1;
}
