// TestName: dummy
// Feature: demo
// TestObjective: verify that the system is alive
// TestPrerequisite: none
// TestSequence: return immediately
// PassCriteria: the return function is executed and trapped by the tcl
// ID: PROJ-29

#include "dummy.h"

void thread_entry(int cid, int nc){
    dummy();
}

int main()
{
    return dummy();
}
