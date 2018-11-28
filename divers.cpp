#include "gba.h"
#include "divers.h"


void next_level(background_text * & bt0,background_text * & bt1,bg_boulder * & br2,const u16 * palette,const u8 * lev,
					const u16 * bt0_map,u16 bt0_width,u16 bt0_height,const u8 * bt0_tiles,u16 bt0_tile,
					const u16 * bt1_map,u16 bt1_width,u16 bt1_height,const u8 * bt1_tiles,u16 bt1_tile,
					const u8 * br2_map,u16 br2_width,u16 br2_height,const u8 * br2_tiles,u16 br2_tile)
{
    
    delete bt0;
    delete bt1;
    delete br2;
	    
	//efface tout ce qui a pas ete efface avec les delete precedents
    delete_sprite();
    init_sprite();
    
	set_mode(MODE_1|OBJ_ENABLE|OBJ_MAP_1D);
				
	copie_DMA((void*)palette, (void*)BG_palette, 256, DMA_16NOW);

    
	bt0=new background_text(0,2,0,0,BG_COLOR_256,27,TEXT_BG_SIZE_256x256,
							bt0_map,bt0_width,bt0_height,
							bt0_tiles,bt0_tile);
	bt0->set_pas_screen(0);
	bt0->set_pas_map(0);
		

	bt1=new background_text(1,0,1,BG_MOSAIC_ENABLE,BG_COLOR_256,25,TEXT_BG_SIZE_256x256,
							bt1_map,bt1_width,bt1_height,
							bt1_tiles,bt1_tile);
	bt1->set_pas_screen(0);
	bt1->set_pas_map(0);
	bt1->init_text(RGB(0,25,20),'n',8);
	
	br2=new bg_boulder(2,1,2,BG_MOSAIC_ENABLE,BG_COLOR_256,29,0,ROT_BG_SIZE_256x256,
							br2_map,br2_width,br2_height,
							br2_tiles,br2_tile);
	br2->set_pas_screen(16);
	br2->set_level(lev);
	
}

//========================================================================================
//========================================================================================
//========================================================================================
//========================================================================================
//========================================================================================

#include "presentation/master_pres.pal.c"
#include "presentation/pres.raw.c"

void presentation()
{
	reset_reg();
	set_mode(MODE_4|BG2_ENABLE);
	
	wait_vsync();
	copie_DMA((void*)master_pres_Palette,(void*)BG_palette,256/2,DMA_32NOW);
	copie_DMA((void*)pres_Bitmap,(void *)video_buffer,38400/4,DMA_32NOW);
	
	wait_key(KEY_START);
}

#include "presentation/try_again.raw.c"

void try_again()
{
	reset_reg();
	set_mode(MODE_4|BG2_ENABLE);
	
	wait_vsync();
	copie_DMA((void*)master_pres_Palette,(void*)BG_palette,256/2,DMA_32NOW);
	copie_DMA((void*)try_again_Bitmap,(void *)video_buffer,38400/4,DMA_32NOW);
		
	wait_time(2,0);
}

#include "presentation/you_win.raw.c"

void you_win()
{
	reset_reg();
	set_mode(MODE_4|BG2_ENABLE);
	
	wait_vsync();
	copie_DMA((void*)master_pres_Palette,(void*)BG_palette,256/2,DMA_32NOW);
	copie_DMA((void*)you_win_Bitmap,(void *)video_buffer,38400/4,DMA_32NOW);
		
	wait_time(2,0);
	
	credit();
}


#include "presentation/you_lose.raw.c"

void you_lose()
{
	reset_reg();
	set_mode(MODE_4|BG2_ENABLE);
	
	wait_vsync();
	copie_DMA((void*)master_pres_Palette,(void*)BG_palette,256/2,DMA_32NOW);
	copie_DMA((void*)you_lose_Bitmap,(void *)video_buffer,38400/4,DMA_32NOW);
		
	wait_time(2,0);
	
	credit();
}

#include "presentation/credit.raw.c"

void credit()
{
	int s=0x100*160;
	REG_BG2Y=s;
	for(int i=0;i<160;i+=20)
	{
	    s-=0x100*20;
		REG_BG2Y       	=s;
		wait_vsync();
		copie_DMA((void*)credit_Bitmap,(void *)video_buffer,38400/4,DMA_32NOW);
		wait_time(1,0);
	}
	
	wait_time(2,0);
}

//========================================================================================
//========================================================================================
//========================================================================================
//========================================================================================
//========================================================================================

void init_time()
{
	REG_TM2=0;
	//il arrive a FFFF en 4 secondes
	//donc 1 seconde correspond à FFFF/4
	REG_TM2=(FREQUENCY_1024|TIMER_ENABLE)<<16|0;				
}

bool change_time()
{
    //si une seconde est passée
	return (REG_TM2D>=(0xFFFF/0x4));
}

//========================================================================================
//========================================================================================
//========================================================================================
//========================================================================================
//========================================================================================

SAMPLE * current_sample_dsa=NULL;
SAMPLE * current_sample_dsb=NULL;
u16 nb_sample_dsa=0;
u16 nb_sample_dsb=0;

void play_sound_dsa(const SAMPLE * s)
{
    stop_sound_dsa();
    
    current_sample_dsa=(SAMPLE *)s;
    
	REG_SOUNDCNT_X=SND_ENABLE;
	REG_SOUNDCNT_L=0;
	REG_SOUNDCNT_H=SND_OUTPUT_RATIO_100|		//100% sound output
					DSA_OUTPUT_RATIO_100|		//100%DSA output
					DSA_OUTPUT_TO_BOTH|			//output DSA to both right & left speakers
					DSA_TIMER0|					//timer 0
					DSA_FIFO_RESET;				//reset the FIFO for DSA
				
	REG_TM0=(TIMER_ENABLE|TIMER_IRQ)<<16|TIMER_INTERVAL_16KHZ;
	
	//copie_DMA((void *)(s->data),(void *)REG_SOUNDFIFOA,0,DMA_ENABLE|DMA_TIMEING_DSOUND|DMA_32|DMA_REPEAT|DMA_SOURCE_INCREMENT|DMA_DEST_FIXED);
	REG_DMA1SAD=(u32)(s->data);
	REG_DMA1DAD=(u32)REG_SOUNDFIFOA;
	REG_DMA1CNT=DMA_ENABLE|DMA_TIMEING_DSOUND|DMA_32|DMA_REPEAT|DMA_SOURCE_INCREMENT|DMA_DEST_FIXED;
	
}
void play_sound_dsb(const SAMPLE * s)
{
    stop_sound_dsb();
    
    current_sample_dsb=(SAMPLE *)s;
    
	REG_SOUNDCNT_X=SND_ENABLE;
	REG_SOUNDCNT_L=0;
	REG_SOUNDCNT_H=SND_OUTPUT_RATIO_100|		//100% sound output
					DSB_OUTPUT_RATIO_100|		//100%DSA output
					DSB_OUTPUT_TO_BOTH|			//output DSA to both right & left speakers
					DSB_TIMER1|					//timer 0
					DSB_FIFO_RESET;				//reset the FIFO for DSA
				
	REG_TM1=(TIMER_ENABLE|TIMER_IRQ)<<16|TIMER_INTERVAL_16KHZ;
	
	//copie_DMA((void *)(s->data),(void *)REG_SOUNDFIFOB,0,DMA_ENABLE|DMA_TIMEING_DSOUND|DMA_32|DMA_REPEAT|DMA_SOURCE_INCREMENT|DMA_DEST_FIXED);
	REG_DMA2SAD=(u32)(s->data);
	REG_DMA2DAD=(u32)REG_SOUNDFIFOB;
	REG_DMA2CNT=DMA_ENABLE|DMA_TIMEING_DSOUND|DMA_32|DMA_REPEAT|DMA_SOURCE_INCREMENT|DMA_DEST_FIXED;
}

void stop_sound_dsa()
{
	REG_TM0=0;
	REG_DMA1CNT=0;
	nb_sample_dsa=0;
	current_sample_dsa=NULL;
}
void stop_sound_dsb()
{
	REG_DMA2CNT=0;
	REG_TM1CNT=0;
	nb_sample_dsb=0;
	current_sample_dsb=NULL;
}


void stop_sound()
{
	stop_sound_dsa();
	stop_sound_dsb();
}



