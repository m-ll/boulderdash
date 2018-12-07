///
/// Copyright (c) 2004-19 m-ll. All Rights Reserved.
///
/// Licensed under the MIT License.
/// See LICENSE file in the project root for full license information.
///
/// 2b13c8312f53d4b9202b6c8c0f0e790d10044f9a00d8bab3edf3cd287457c979
/// 29c355784a3921aa290371da87bce9c1617b8584ca6ac6fb17fb37ba4a07d191
///

#include "gba.h"

OAM_entry OAM_buffer[128];
rot_data * OAM_buffer_rot=(rot_data *)OAM_buffer;

u16 * video_buffer=front_buffer;


void copie_DMA(void * source,void * dest,u32 nbval,u32 mode,u8 channel)
{
	switch (channel)
	{
		case 0: 
			REG_DMA0SAD = (u32)source;
			REG_DMA0DAD = (u32)dest;			
			REG_DMA0CNT = nbval | mode;
			break;
		case 1:
			REG_DMA1SAD = (u32)source;
			REG_DMA1DAD = (u32)dest;
			REG_DMA1CNT = nbval | mode;
			break;
		case 2:
			REG_DMA2SAD = (u32)source;
			REG_DMA2DAD = (u32)dest;
			REG_DMA2CNT = nbval | mode;
			break;

		case 3:
			REG_DMA3SAD = (u32)source;
			REG_DMA3DAD = (u32)dest;
			REG_DMA3CNT = nbval | mode;
			break;

	}
}

void wait_time(int s, int ms)
{
#ifdef _DEBUG_
    if((s*1000+ms)>=4000) debug("%s : %d\n\twait_time>4s : %dms",__FILE__,__LINE__,s*1000+ms);
#endif
   
	u16 nb_ms=(s*1000+ms);
	REG_TM3 = (FREQUENCY_1024 | TIMER_ENABLE)<<16|0;

	while(REG_TM3D / (65536/4000) < nb_ms) ;

	REG_TM3 = 0;


}

//========================================================================================
//========================================================================================
//========================================================================================
//========================================================================================

void mosaic_in(u16 t)
{
	for(int i=15;i>=0;i--)
	{
	    REG_MOSAIC=set_mosaic(i,i,i,i);
	    wait_time(0,(t*1000)/16);
 	}
}

void mosaic_out(u16 t)
{ 
	for(int i=0;i<16;i++)
	{
	    REG_MOSAIC=set_mosaic(i,i,i,i);
	    wait_time(0,(t*1000)/16);
 	}
}

void fade_out(u16 target,u16 t)
{
    set_target(target,SFX_FADE_OUT,0);
    fade(t);
}

void fade_in(u16 target,u16 t)
{
    set_target(target,SFX_FADE_IN,0);
    fade(t);
}

void fade(u16 t)
{ 
	for(int i=0;i<17;i++)
	{
  		set_fade(i);
	    wait_time(0,(t*1000)/17);
 	}
}


//========================================================================================
//========================================================================================
//========================================================================================
//========================================================================================

void Mode4_PutPixel(u16 x, u16 y, u8 charCouleur)
{
	u16 temp;
	//récupère la valeur qui est déjà à cette place.
	temp=video_buffer[(y * 240 + x)>>1];
	if(x & 1)
	{
		//Si coordonée x paire
		// Efface la partie haute de la variable
		temp = temp & 0x00FF ;
		temp = temp + (charCouleur << 8);
	}
	else
	{
		//Si coordonée x impaire
		// Efface la partie basse de la variable
		temp = temp & 0xFF00 ;
		temp = temp + charCouleur;
	}
	video_buffer[(y * 240 + x)>>1]=temp;
}


void swap_buffer()
{
	if(REG_DISPCNT & 0x10)
	{
		REG_DISPCNT &= ~0x10;
		video_buffer=back_buffer;
	}
	else
	{
		REG_DISPCNT |= 0x10;
		video_buffer=front_buffer;
	}
}

