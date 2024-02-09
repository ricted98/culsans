#include <stdint.h>
#include "io.h"
#include "cache.h"
#include "encoding.h"

static void reset_counters() {
    write_csr(mhpmcounter3, 0b0);
    write_csr(mhpmcounter4, 0b0);
    write_csr(mhpmcounter5, 0b0);
    write_csr(mhpmcounter6, 0b0);
    write_csr(mhpmcounter7, 0b0);
    write_csr(mhpmcounter8, 0b0);
}

static void start_counters() {
    write_csr(mhpmevent3, 0b00001); // IMISS
    write_csr(mhpmevent4, 0b00010); // DMISS
    write_csr(mhpmevent5, 0b10010); // L1 EVICTION
    write_csr(mhpmevent6, 0b00101); // LOAD
    write_csr(mhpmevent7, 0b00110); // STORE
    write_csr(mhpmevent8, 0b10001); // L1 ACCESS
}

static void stop_counters() {
    write_csr(mhpmevent3, 0b0);
    write_csr(mhpmevent4, 0b0);
    write_csr(mhpmevent5, 0b0);
    write_csr(mhpmevent6, 0b0);
    write_csr(mhpmevent7, 0b0);
    write_csr(mhpmevent8, 0b0);
}

static unsigned int read_imiss() {
    return read_csr(mhpmcounter3);
}

static unsigned int read_dmiss() {
    return read_csr(mhpmcounter4);
}

static unsigned int read_l1_eviction() {
    return read_csr(mhpmcounter5);
}

static unsigned int read_l1_accesses() {
    return read_csr(mhpmcounter8);
}

static unsigned int read_loads() {
    return read_csr(mhpmcounter6);
}

static unsigned int read_stores() {
    return read_csr(mhpmcounter7);
}

void profile(void (*func)(volatile cacheline_t*), volatile cacheline_t* data) {

    uint64_t begin, end;
    uint64_t instr_begin, instr_end;

    reset_counters();
    start_counters();
    begin = rdcycle();
    instr_begin = rdinstret();

    func(data);

    instr_end = rdinstret();
    end = rdcycle();
    stop_counters();
    uint64_t cycles = end - begin;
    uint64_t instr  = instr_end - instr_begin;

    put_string("IMISS: ");
    put_uint32(read_imiss());
    put_string(", ");

    put_string("DMISS: ");
    put_uint32(read_dmiss());
    put_string(", ");

    put_string("TOT_CYC: ");
    put_uint64(cycles);
    put_string(", ");

    put_string("LOADS: ");
    put_uint32(read_loads());
    put_string(", ");

    put_string("STORES: ");
    put_uint32(read_stores());
    put_string(", ");

    put_string("INSTR: ");
    put_uint64(instr);
    put_string(", ");

    put_string("L1_ACC: ");
    put_uint32(read_l1_accesses());
    put_string(", ");

    put_string("L1_EVICT: ");
    put_uint32(read_l1_eviction());
    put_string("\r\n");

    return;
}
