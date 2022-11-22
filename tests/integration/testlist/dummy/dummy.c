#include "dummy.h"
#include <stdint.h>

int dummy()
{

  uint64_t mhartid;
  asm volatile ("csrr %[reg], mhartid" : [reg] "=r" (mhartid));

  if(mhartid)
    return 0;

    return 1;
}
