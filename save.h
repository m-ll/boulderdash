#ifndef _SAVE_H_
#define _SAVE_H_

#include "gba.h"

#define SAVE_RAM		0x0E000000

void save_8(u16,u8);
void save_16(u16,u16);
void save_32(u16,u32);
void save_string(u16,char *);

u8 load_8(u16);
u16 load_16(u16);
u32 load_32(u16);
void load_string(u16,u16,char *);

#endif
