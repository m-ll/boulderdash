#include "gba.h"
#include "background_rotation.h"


background_rotation::background_rotation():background()
{
    init();
}



background_rotation::background_rotation(u16 no_back,u16 priority,u16 char_block,u16 mosaic,u16 col_pal,u16 screen_block,u16 wrap,u16 size,
				const u8 * m,u16 s_x,u16 s_y,const u8 * t,u16 s_t)
{
    init();
    
#ifdef _DEBUG_
    if(no_back!=2&&no_back!=3) 						debug("%s : %d \n\tno_back %d",__FILE__,__LINE__,no_back);
	if(priority>=4) 								debug("%s : %d \n\tpriority %d",__FILE__,__LINE__,priority);
	if(char_block>=4) 								debug("%s : %d \n\tchar_block %d",__FILE__,__LINE__,char_block);
	if(mosaic!=BG_MOSAIC_ENABLE&&mosaic!=0) 		debug("%s : %d \n\tmosaic %d",__FILE__,__LINE__,mosaic);
	if(col_pal!=BG_COLOR_16&&col_pal!=BG_COLOR_256) debug("%s : %d \n\tcol_pal %d",__FILE__,__LINE__,col_pal);
	if(screen_block>=32) 							debug("%s : %d \n\tscreen_block %d",__FILE__,__LINE__,screen_block);
	if(wrap!=WRAPAROUND&&wrap!=0) 					debug("%s : %d \n\twrap %d",__FILE__,__LINE__,wrap);
	if(size!=ROT_BG_SIZE_128x128&&size!=ROT_BG_SIZE_256x256&&size!=ROT_BG_SIZE_512x512&&size!=ROT_BG_SIZE_1024x1024)
													debug("%s : %d \n\tsize %d",__FILE__,__LINE__,size);
	if(!m) 											debug("%s : %d \n\tm %d",__FILE__,__LINE__,m);
	if(!t) 											debug("%s : %d \n\tt %d",__FILE__,__LINE__,t);
	if(s_t%8) 										debug("%s : %d \n\ts_t %d",__FILE__,__LINE__,s_t);
    if((is_mode0())||(is_mode1()&&no_back!=2)||(is_mode2()&&(no_back==0||no_back==1)))
													debug("%s : %d pb mode",__FILE__,__LINE__);
#endif
#ifdef _COND_
    if((no_back!=2&&no_back!=3)||(priority>=4)||(char_block>=4)||(mosaic!=BG_MOSAIC_ENABLE&&mosaic!=0)||
		(col_pal!=BG_COLOR_16&&col_pal!=BG_COLOR_256)||(screen_block>=32)||(wrap!=WRAPAROUND&&wrap!=0)||
		(size!=ROT_BG_SIZE_128x128&&size!=ROT_BG_SIZE_256x256&&size!=ROT_BG_SIZE_512x512&&size!=ROT_BG_SIZE_1024x1024)||
		(!m)||(!t)||(s_t%8))
		return;
    if((is_mode0())||(is_mode1()&&no_back!=2)||(is_mode2()&&(no_back==0||no_back==1)))
		return;
#endif
    
	no_bg=no_back;
	switch(no_back)
	{
	    case 2:
			add_mode(BG2_ENABLE);
			REG_BGXCNT=&REG_BG2CNT;
			REG_BGXPA=&REG_BG2PA;
			REG_BGXPB=&REG_BG2PB;
			REG_BGXPC=&REG_BG2PC;
			REG_BGXPD=&REG_BG2PD;
			
			REG_BGXX=&REG_BG2X;
			REG_BGXY=&REG_BG2Y;
			break;
	    case 3:
			add_mode(BG3_ENABLE);
			REG_BGXCNT=&REG_BG3CNT;
			REG_BGXPA=&REG_BG3PA;
			REG_BGXPB=&REG_BG3PB;
			REG_BGXPC=&REG_BG3PC;
			REG_BGXPD=&REG_BG3PD;
			
			REG_BGXX=&REG_BG3X;
			REG_BGXY=&REG_BG3Y;
			break;
	}
	

    sbb=(u16 *)screen_base_block(screen_block);
    cbb=(u16 *)char_base_block(char_block);
	map=new u8 [s_x*s_y];
	copie_DMA((void *)m,(void *)map,s_x*s_y,DMA_16NOW);
	map_size_x=s_x;
	map_size_y=s_y;
	tile=new u8 [s_t];
	copie_DMA((void *)t,(void *)tile,s_t>>1,DMA_16NOW);
	tile_size=s_t;
    
	set_priority(priority);
	set_cbb(char_block);
	set_mosaic_flag(mosaic);
	set_col_pal_flag(col_pal);
	set_sbb(screen_block);
	set_wraparound_flag(wrap);
	set_size_flag(size);
	
#ifdef _DEBUG_
	if((s_x*8<size2pixel())||
		(s_y*8<size2pixel()))
	{
	    init();
		debug("%s : %d \n\tx : %d <%d \ny : %d < %d",__FILE__,__LINE__,s_x*8,size2pixel(),s_y*8,size2pixel());
	}
#endif
#ifdef _COND_
	if((s_x*8<size2pixel())||
		(s_y*8<size2pixel()))
	{
	    init();
		return;
	}
#endif

	nb_tile_x=size2pixel()/8;
	nb_tile_y=size2pixel()/8;
	
	//normalement c'est ca, mais comme on sait que MAX_TILE_X>MAX_TILE_Y, on a tout de suite le min
//	max_pas_map=MIN(NB_TILE_X-ECRAN_TILE_X,NB_TILE_Y-ECRAN_TILE_Y);
	max_pas_map=nb_tile_x-ECRAN_TILE_X;
	pas_map=max_pas_map;
	
	max_pas_screen=max_pas_map*8;
	pas_screen=max_pas_screen;
	
	update();
}


background_rotation::~background_rotation()
{
/* 
	for(int i=0;i<tile_size;i++)
		cbb[i]=0;
	int i=0;
	for(int y=0;y<32;y++)
		for(int x=0;x<32/2;x++)
		{
			sbb[i]=0;
			i++;
		}
 */  
    
    delete [] map;
    init();
}

void background_rotation::init()
{
    map=NULL;
/*
    if(REG_BGXPA)	*REG_BGXPA=0;
    if(REG_BGXPB)	*REG_BGXPB=0;
    if(REG_BGXPC)	*REG_BGXPC=0;
    if(REG_BGXPD)	*REG_BGXPD=0;
    
    if(REG_BGXX)	*REG_BGXX=0;
    if(REG_BGXY)	*REG_BGXY=0;
*/    
	REG_BGXPA=NULL;
	REG_BGXPB=NULL;
	REG_BGXPC=NULL;
	REG_BGXPD=NULL;

    REG_BGXX=NULL;
    REG_BGXY=NULL;

	center_x=center_y=0;
	angle=0;
	zoom_x=zoom_y=INT2FIXED(1);
//	pas_angle=0;
//	pas_zoom_x=pas_zoom_y=0;

    background::init();
    
}

void background_rotation::change_tile(u16 x,u16 y,u16 no_t)
{
#ifdef _DEBUG_
    if(x>=map_size_x) 			debug("%s : %d \n\tx %d",__FILE__,__LINE__,x);
	if(y>=map_size_y) 			debug("%s : %d \n\ty %d",__FILE__,__LINE__,y);
	if(no_t>=tile_size/(8*8)) 	debug("%s : %d \n\tno_t %d",__FILE__,__LINE__,no_t);
#endif
#ifdef _COND_
    if(x>=map_size_x||y>=map_size_y||no_t>=tile_size/(8*8))
		return;
#endif

    map[y*map_size_x+x]=no_t;
}

void background_rotation::change_tile_16(u16 x,u16 y,u16 no0,u16 no1,u16 no2,u16 no3)
{
#ifdef _DEBUG_
    if(x>=map_size_x) 			debug("%s : %d \n\tx %d",__FILE__,__LINE__,x);
	if(y>=map_size_y) 			debug("%s : %d \n\ty %d",__FILE__,__LINE__,y);
	if(no0>=tile_size/(8*8)) 	debug("%s : %d \n\tno0 %d",__FILE__,__LINE__,no0);
	if(no1>=tile_size/(8*8)) 	debug("%s : %d \n\tno1 %d",__FILE__,__LINE__,no1);
	if(no2>=tile_size/(8*8)) 	debug("%s : %d \n\tno2 %d",__FILE__,__LINE__,no2);
	if(no3>=tile_size/(8*8)) 	debug("%s : %d \n\tno3 %d",__FILE__,__LINE__,no3);
#endif
#ifdef _COND_
    if(x>=map_size_x||y>=map_size_y||no0>=tile_size/(8*8)||no1>=tile_size/(8*8)||no2>=tile_size/(8*8)||no3>=tile_size/(8*8))
		return;
#endif

    map[y*map_size_x+x]=no0;
    map[y*map_size_x+x+1]=no1;
    map[(y+1)*map_size_x+x]=no2;
    map[(y+1)*map_size_x+x+1]=no3;
}

void background_rotation::update()
{
	wait_vsync();
	//on divise par 2 parce qu'on copie en 16 bits alors que le tableau a des cases de 8 bits
	copie_DMA((void*)tile,(void*)cbb, tile_size>>1, DMA_16NOW);

//	wait_vsync();	
/*	int i=0;
	for(int y=0;y<32;y++)
		for(int x=0;x<32/2;x++)
		{
		    u16 t=(map[(y+map_voff)*map_size_x+(map_hoff)+x*2+1]<<8)+map[(y+map_voff)*map_size_x+(map_hoff)+x*2];
			sbb[i]=t;
			i++;
		}
*/
	//a verifier
	u16 taille=size2pixel()/8;
	for(int y=0;y<taille;y++)
	{
	    copie_DMA((void *)(map+((y+map_voff)*map_size_x+(map_hoff))),(void *)(sbb+y*(taille/2)),taille/2,DMA_16NOW);
 	}
		
    s16 c_x,c_y;
    c_x=FIXED2INT(center_x*zoom_x);
    c_y=FIXED2INT(center_y*zoom_y);
    
#ifdef _ROT_ZOOM_A_FAIRE_
	debug("a verifier %s : %d !!!\npour le centre de rotation",__FILE__,__LINE__);
	//c'est peut etre la meme chose
#endif

	*REG_BGXX=INT2FIXED(screen_xoff+c_x)-c_y*FIXED2INT(SIN[angle])-c_x*FIXED2INT(COS[angle]);
	*REG_BGXY=INT2FIXED(screen_yoff+c_y)-c_y*FIXED2INT(COS[angle])+c_x*FIXED2INT(SIN[angle]);

	*REG_BGXPA=(FIXED2INT(COS[angle])*zoom_x)>>8;
	*REG_BGXPB=(FIXED2INT(SIN[angle])*zoom_y)>>8;
	*REG_BGXPC=(FIXED2INT(-SIN[angle])*zoom_x)>>8;
	*REG_BGXPD=(FIXED2INT(COS[angle])*zoom_y)>>8;
	
}

void background_rotation::right()
{
#ifdef _ROT_ZOOM_A_FAIRE_
	debug("a faire %s : %d !!!",__FILE__,__LINE__);
    double t=1;
    //si zoom_x<0x100 : t>1
    //si zoom_x>0x100 : t<1
    //le t c'est le zoom en decimal
    if(zoom_x!=0x100) t=256./zoom_x;
    
    screen_xoff+=pas_screen;
    if(screen_xoff*t+ECRAN_TILE_X*8>nb_tile_x()*8*t)
		screen_xoff=nb_tile_x()*8-(s32)(ECRAN_TILE_X*8/t);	//on a divise par t
#else
	background::right();
#endif
}

void background_rotation::down()
{
#ifdef _ROT_ZOOM_A_FAIRE_
	debug("a faire %s : %d !!!",__FILE__,__LINE__);
    double t=1;
    if(zoom_y!=0x100) t=256./zoom_y;
//si la partie de map est superieure au cadre ecran on fait rien
//    if(ECRAN_TILE_Y*8>nb_tile_y()*8*t) return;
    screen_yoff+=pas_screen;
    if(screen_yoff*t+ECRAN_TILE_Y*8>nb_tile_y()*8*t)
		screen_yoff=nb_tile_y()*8-(s32)(ECRAN_TILE_Y*8/t);
#else
	background::down();
#endif
}

void background_rotation::up()
{
#ifdef _ROT_ZOOM_A_FAIRE_
	debug("a faire %s : %d !!!",__FILE__,__LINE__);
#else
    background::up();
#endif
}

void background_rotation::left()
{
#ifdef _ROT_ZOOM_A_FAIRE_
	debug("a faire %s : %d !!!",__FILE__,__LINE__);
#else
    background::left();
#endif
}

void background_rotation::rotate(u16 a)
{
	//le tableau COS et SIN contiennent des FIXED
#ifdef _DEBUG_
	if(a>360) debug("%s : %d \n\ta %d",a);
#endif
#ifdef _COND_
	if(a>360) return;
#endif

    angle=a;
//    update();
}

void background_rotation::set_center(s16 cx,s16 cy)
{
    center_x=cx;
    center_y=cy;
//    update();
}

void background_rotation::set_zoom(FIXED_8 z_x,FIXED_8 z_y)
{
    debug("pas de zoom : a faire !!!");
    
    zoom_x=z_x;
    zoom_y=z_y;
//    update();
}


//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////


u16 background_rotation::size2pixel()
{
    u16 s=get_size_flag();
    if(s==ROT_BG_SIZE_128x128)			return 128;
    if(s==ROT_BG_SIZE_256x256)			return 256;
    if(s==ROT_BG_SIZE_512x512)			return 512;
    if(s==ROT_BG_SIZE_1024x1024)		return 1024;
    
    return 0xFFFF;
}

u16 background_rotation::pixel2size(u16 s)
{
    if(s==128)		return ROT_BG_SIZE_128x128;
    if(s==256)		return ROT_BG_SIZE_256x256;
    if(s==512)		return ROT_BG_SIZE_512x512;
    if(s==1024)		return ROT_BG_SIZE_1024x1024;
    
    return 0xFFFF;
}

