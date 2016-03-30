
#include "main.h"

uint8_t keyRegister[KEYSIZE] __attribute__((aligned (4)));
uint8_t inpRegister[16]      __attribute__((aligned (4)));
uint8_t outRegister[16]      __attribute__((aligned (4)));
uint32_t* keySchedule;
unsigned seed;

// XOR placeholder to make this work/compile
void xor(uint8_t *out, uint8_t *inp, uint8_t *key) {
  int idx;
  for (idx = 0; idx < 16; ++idx) {
    out[idx] = inp[idx] ^ key[idx];
  }
}

void str2BuffLE(uint8_t* dst, char* src, uint32_t len) {
    uint32_t idx;
    for(idx = 0; idx < len; idx++) {
        dst[len-idx-1] = (ascii2Bin(src[2*idx]) << 4) ^ ascii2Bin(src[(2*idx)+1]);
    }
}

void str2Buff(uint8_t *dst, char* src, uint32_t len) {

  uint32_t idx;

  for (idx = 0; idx < len; idx++) {
    dst[idx] = (ascii2Bin(src[2*idx]) << 4) ^ ascii2Bin(src[(2*idx)+1]);
  }
}

void buff2str(char *dst, uint8_t *src, uint32_t len) {

   uint32_t idx;

   for (idx=0; idx < (len * 2); idx=idx+2)
   {
      dst[idx]   = bin2Ascii((src[idx/2] >> 4) & 0x0F);
      dst[idx+1] = bin2Ascii( src[idx/2]       & 0x0F);
   }
}

void encrypt(char* str){

  gpio_set(GPIOD, GPIO1);

  ////////////////////////////////////////////
  //DO SOME ENCRYPTION STUFF HERE
  //xor(outRegister, inpRegister, keyRegister);
  Cipher(inpRegister, outRegister, keySchedule);
  ////////////////////////////////////////////

  gpio_clear(GPIOD, GPIO1);

  buff2str(str, outRegister, 16);
  str[32] = 0x00;

  writeStringToUART(str);
  writeStringToUART("\n");
}

void decrypt(char* str){

  gpio_set(GPIOD, GPIO1);

  ////////////////////////////////////////////
  //DO SOME ENCRYPTION STUFF HERE
  xor(outRegister, inpRegister, keyRegister);
  ////////////////////////////////////////////

  gpio_clear(GPIOD, GPIO1);

  buff2str(str, outRegister, 16);
  str[32] = 0x00;

  writeStringToUART(str);
  writeStringToUART("\n");
}

void setInp(char* str){
  str2Buff(inpRegister, str, 16);
  writeStringToUART("OK\n");
}

void setKey(char* str){
  str2Buff(keyRegister, str, KEYSIZE);
  KeyExpansion(keyRegister, keySchedule);
  writeStringToUART("OK\n");
}

void setSeed(char* str) {
  str2BuffLE((uint8_t*)&seed, str, 4);
  srand(seed);
  writeStringToUART("OK\n");
}

void commandHandler(char* str) {

  // Just a large if-else chain to figure out what we're doing
  if        (!memcmp(str, "key:", 4)) {
    setKey(str+4);
  } else if (!memcmp(str, "inp:", 4)) {
    setInp(str+4);
  } else if (!memcmp(str, "enc",  4)) {
    encrypt(str);
  //} else if (!memcmp(str, "dec",  4)) {
  //  decrypt(str);
  } else if (!memcmp(str, "seed:", 5)) {
    setSeed(str+5);
  } else {
    writeStringToUART("Command not recognised!\n");
  }
}

int main(void) {

  char commandBuffer[BUFSIZE];

  clockSetup();
  gpioSetup();
  usartSetup();
  
  keySchedule = AllocateKeySchedule();

  // loop on command receive
  while(1) {
    readStringFromUART(commandBuffer, BUFSIZE);
    commandHandler    (commandBuffer);
  }

  return 0;
}
