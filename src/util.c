#include "util.h"

// int strcmp(const char *s1, const char *s2)
// {
//     for ( ; *s1 == *s2; s1++, s2++)
//     if (*s1 == '\0')
//         return 0;
//     return ((*(unsigned char *)s1 < *(unsigned char *)s2) ? -1 : +1);
// }

// void *memcpy(void *dst, const void *src, size_t len)
// {
//     register char *src_c, *dst_c;

//     src_c = (char *)src;
//     dst_c = (char *)dst;

//     while (len-- > 0)
//         *dst_c++ = *src_c++;

//     return dst;
// }

// int memcmp(const void *s1, const void *s2, size_t n)
// {
//     unsigned char u1, u2;

//     for ( ; n-- ; s1++, s2++) {
//     u1 = * (unsigned char *) s1;
//     u2 = * (unsigned char *) s2;
//     if ( u1 != u2) {
//         return (u1-u2);
//     }
//     }
//     return 0;
// }

// unsigned char _tolower(unsigned char c){
//     return (c >= 'A' && c <= 'Z' ? c - 'A' + 'a' : c);
// }