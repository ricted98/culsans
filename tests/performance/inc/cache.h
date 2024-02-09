#ifndef __CACHE_H__
#define __CACHE_H__

#define CACHE_WAYS 8
#define CACHE_ENTRIES 128
#define CACHE_LINE_BYTE 16
#define CACHE_SIZE_BYTE 16384
#define NUM_WORDS 11

// cachelines are 128bit long
// cache is 16kB: 16B cachelines x 128 entries x 8 ways
#define cacheline_t __uint128_t

#endif
