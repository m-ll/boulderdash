///
/// Copyright (c) 2004-19 m-ll. All Rights Reserved.
///
/// Licensed under the MIT License.
/// See LICENSE file in the project root for full license information.
///
/// 2b13c8312f53d4b9202b6c8c0f0e790d10044f9a00d8bab3edf3cd287457c979
/// 29c355784a3921aa290371da87bce9c1617b8584ca6ac6fb17fb37ba4a07d191
///

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
