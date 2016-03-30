#ifndef __MAIN_H__
#define __MAIN_H__

////// Project headers ////////////////
#include "setup.h"
#include "comms.h"
#include "aes128.h"
///////////////////////////////////////

////// Library headers ////////////////
#include <libopencm3/stm32/usart.h>
///////////////////////////////////////

////// System headers /////////////////
#include <string.h>
#include <stdint.h>
#include <ctype.h>
///////////////////////////////////////

////// ASM functions //////////////////
extern int helloWorldAsm(void);
///////////////////////////////////////

////// Definitions ////////////////////
#define BUFSIZE 256
#define KEYSIZE 16
///////////////////////////////////////

////// Macros /////////////////////////
#define ascii2Bin(x) ( ((x)>='0' && (x)<='9') ? (x)-'0' : 10+tolower(x)-'a' )
#define bin2Ascii(x) ( ((x)<=9) ? (x)+'0' : (x)+'A'-10 )
///////////////////////////////////////

void xor(uint8_t *out, uint8_t *inp, uint8_t *key);

void str2Buff (uint8_t *dst, char* src, uint32_t len);
void buff2str (char *dst, uint8_t *src, uint32_t len);

void encrypt(char* str);
void decrypt(char* str);

void setInp(char* str);
void setKey(char* str);

void commandHandler(char* buffer);


#endif /* __MAIN_H__ */