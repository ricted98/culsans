#include "dummy.h"
#include <stdint.h>

int dummy()
{

  uint64_t mhartid;
  asm volatile ("csrr %[reg], mhartid" : [reg] "=r" (mhartid));

  if(mhartid==0)
    return 0;
  if(mhartid==1)
    { asm volatile ("wfi"); }

    return 1;
}
