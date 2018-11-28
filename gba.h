#ifndef _GBA_H_
#define _GBA_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include "gba_types.h"
#include "gba_regs.h"
#include "gba_keys.h"
#include "gba_video.h"
#include "gba_sprites.h"
#include "gba_bg.h"
#include "gba_dma.h"
#include "gba_mosaic.h"
#include "gba_timer.h"
#include "gba_alpha.h"
#include "gba_sound.h"

#include "math_trigo.h"
#include "interrupt.h"
#include "save.h"

#include "debug.h"

extern OAM_entry OAM_buffer[128];
extern rot_data * OAM_buffer_rot;
extern u16 * video_buffer;

#define wait_vsync() 				while(REG_VCOUNT!=160) ;
//#define wait_n_vsync(n) 			for(int i=0;i<n;i++){wait_vsync();}

void copie_DMA(void* source, void* dest, u32 nbval, u32 mode, u8 channel=3);
void wait_time(int s, int ms);
void mosaic_in(u16=1);
void mosaic_out(u16=1);
void fade(u16=1);
void fade_in(u16,u16=1);
void fade_out(u16,u16=1);
void Mode4_PutPixel(u16 x, u16 y, u8 charCouleur);
void swap_buffer();

#endif
