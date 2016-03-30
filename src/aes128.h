#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif
	uint32_t* AllocateKeySchedule();
	uint8_t** AllocateData(uint8_t* input, int len, int* outNumBlocks);
	void KeyExpansion(uint8_t* key, uint32_t* w);
	void Cipher(uint8_t* in, uint8_t* out, uint32_t* w);
#ifdef __cplusplus
}

#endif