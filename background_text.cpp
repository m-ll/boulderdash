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
#include "background_text.h"


background_text::background_text():background()
{
}


background_text::background_text(u16 no_back,u16 priority,u16 char_block,u16 mosaic,u16 col_pal,u16 screen_block,u16 size,
				const u16 * m,u16 s_x,u16 s_y,const u8 * t,u16 s_t)
{
    init();
    
#ifdef _DEBUG_
    if(no_back>=4) 									debug("%s : %d \n\tno_back %d",__FILE__,__LINE__,no_back);
	if(priority>=4) 								debug("%s : %d \n\tpriority %d",__FILE__,__LINE__,priority);
	if(char_block>=4) 								debug("%s : %d \n\tchar_block %d",__FILE__,__LINE__,char_block);
	if(mosaic!=BG_MOSAIC_ENABLE&&mosaic!=0) 		debug("%s : %d \n\tmosaic %d",__FILE__,__LINE__,mosaic);
	if(col_pal!=BG_COLOR_16&&col_pal!=BG_COLOR_256) debug("%s : %d \n\tcol_pal %d",__FILE__,__LINE__,col_pal);
	if(screen_block>=32) 							debug("%s : %d \n\tscreen_block %d",__FILE__,__LINE__,screen_block);
	if(size!=TEXT_BG_SIZE_256x256&&size!=TEXT_BG_SIZE_512x256&&size!=TEXT_BG_SIZE_256x512&&size!=TEXT_BG_SIZE_512x512)
													debug("%s : %d \n\tsize %d",__FILE__,__LINE__,size);
	if(!m) 											debug("%s : %d \n\tm %d",__FILE__,__LINE__,m);
	if(!t) 											debug("%s : %d \n\tt %d",__FILE__,__LINE__,t);
	if(s_t%8) 										debug("%s : %d \n\ts_t %d",__FILE__,__LINE__,s_t);
    if((is_mode1()&&(no_back==2||no_back==3))||(is_mode2())) debug("%s : %d pb mode",__FILE__,__LINE__);
#endif
#ifdef _COND_
    if((no_back>=4)||(priority>=4)||(char_block>=4)||(mosaic!=BG_MOSAIC_ENABLE&&mosaic!=0)||
		(col_pal!=BG_COLOR_16&&col_pal!=BG_COLOR_256)||(screen_block>=32)||
		(size!=TEXT_BG_SIZE_256x256&&size!=TEXT_BG_SIZE_512x256&&size!=TEXT_BG_SIZE_256x512&&size!=TEXT_BG_SIZE_512x512)||
		(!m)||(!t)||(s_t%8))
		return;
    if((is_mode1()&&(no_back==2||no_back==3))||(is_mode2()))
		return;
#endif

	no_bg=no_back;
	switch(no_back)
	{
	    case 0:
			add_mode(BG0_ENABLE);
			REG_BGXCNT=&REG_BG0CNT;
			REG_BGXHOFS=&REG_BG0HOFS;
			REG_BGXVOFS=&REG_BG0VOFS;
			break;
	    case 1:
			add_mode(BG1_ENABLE);
			REG_BGXCNT=&REG_BG1CNT;
			REG_BGXHOFS=&REG_BG1HOFS;
			REG_BGXVOFS=&REG_BG1VOFS;
			break;
	    case 2:
			add_mode(BG2_ENABLE);
			REG_BGXCNT=&REG_BG2CNT;
			REG_BGXHOFS=&REG_BG2HOFS;
			REG_BGXVOFS=&REG_BG2VOFS;
			break;
	    case 3:
			add_mode(BG3_ENABLE);
			REG_BGXCNT=&REG_BG3CNT;
			REG_BGXHOFS=&REG_BG3HOFS;
			REG_BGXVOFS=&REG_BG3VOFS;
			break;
	}
	
    
    sbb=(u16 *)screen_base_block(screen_block);
    cbb=(u16 *)char_base_block(char_block);
    
	map_size_x=s_x;
	map_size_y=s_y;
	tile_size=s_t;
    
	map=new u16 [map_size_x*map_size_y];
	copie_DMA((void *)m,(void *)map,map_size_x*map_size_y,DMA_16NOW);
	tile=new u8 [tile_size];
	//on divise par 2 puisque t est un tableau de 8 bits
	copie_DMA((void *)t,(void *)tile,tile_size>>1,DMA_16NOW);
	
	set_priority(priority);
	set_cbb(char_block);
	set_mosaic_flag(mosaic);
	set_col_pal_flag(col_pal);
	set_sbb(screen_block);
	set_size_flag(size);
	
#ifdef _DEBUG_
	if((map_size_x*8<size2pixel('x'))||
		(map_size_y*8<size2pixel('y')))
	{
	    init();
		debug("%s : %d \n\tx : %d <%d \ny : %d < %d",__FILE__,__LINE__,map_size_x*8,size2pixel('x'),map_size_y*8,size2pixel('y'));
	}
#endif
#ifdef _COND_
	if((map_size_x*8<size2pixel('x'))||
		(map_size_y*8<size2pixel('y')))
	{
	    init();
		return;
	}
#endif

	nb_tile_x=size2pixel('x')/8;
	nb_tile_y=size2pixel('y')/8;
	
	//le pas max que l'on peut avoir entre 2 parties de map, pour que le cadre d'ecran soit le meme
	//sur les 2 parties de map
	max_pas_map=MIN(nb_tile_x-ECRAN_TILE_X,nb_tile_y-ECRAN_TILE_Y);
	pas_map=max_pas_map;
	//le pas max que l'on peut avoir pour le cadre d'ecran sans qu'il ne sorte de la partie de map courante
	max_pas_screen=max_pas_map*8;
	pas_screen=max_pas_screen;
	
	update();
}

background_text::~background_text()
{
/*
	for(int i=0;i<tile_size;i++)
		cbb[i]=0;
//	copie_DMA((void*)tile,(void*)cbb, tile_size>>1, DMA_16NOW);

	u16 offset=32*32;
	
	for(int y=0;y<nb_tile_y;y++)
		for(int x=0;x<nb_tile_x;x++)
			switch(get_size_flag())
			{
				case TEXT_BG_SIZE_256x256:
					sbb[x+y*32]=0;
					break;
				case TEXT_BG_SIZE_512x256:
					if(x<32)
						sbb[x+y*32]=0;
					else
						sbb[(x-32)+y*32+offset]=0;
					break;
				case TEXT_BG_SIZE_256x512:
					sbb[x+y*32]=0;
					break;
				case TEXT_BG_SIZE_512x512:
					if(y<32)
						if(x<32)
							sbb[x+y*32]=0;
						else
							sbb[(x-32)+y*32+offset]=0;
					else
						if(x<32)
							sbb[x+((y-32)*32)+(2*offset)]=0;
						else
							sbb[(x-32)+((y-32)*32)+(3*offset)]=0;
					break;
		}		
*/
    
    delete [] map;
    init();
}

void background_text::init()
{
    map=NULL;
//    if(REG_BGXHOFS) *REG_BGXHOFS=0;
//    if(REG_BGXVOFS) *REG_BGXVOFS=0;
    REG_BGXHOFS=NULL;
    REG_BGXVOFS=NULL;
    
    /*
   		style=0;
   		taille=0;
   		color=0;
    */
    
    background::init();
}

void background_text::change_tile(u16 x,u16 y,u16 no_t,u16 no_rot)
{
#ifdef _DEBUG_
    if(x>=map_size_x) debug("%s : %d \n\tx %d",__FILE__,__LINE__,x);
	if(y>=map_size_y) debug("%s : %d \n\ty %d",__FILE__,__LINE__,y);
	if(no_t>=tile_size/(8*8)) debug("%s : %d \n\tno_t %d",__FILE__,__LINE__,no_t);
	if(no_rot>=4) debug("%s : %d \n\tno_rot %d",__FILE__,__LINE__,no_rot);
#endif
#ifdef _COND_
    if(x>=map_size_x||y>=map_size_y||no_t>=tile_size/(8*8)||no_rot>=4)
		return;
#endif
	//on a 4 chaines de 1024 tiles, seulement les 3 dernieres chaines ne sont que des rotations
	//de la premiere dans les 4 directions
    map[y*map_size_x+x]=no_t+1024*no_rot;
}


void background_text::update()
{
	wait_vsync();
	//on divise par 2 parce qu'on copie en 16 bits alors que le tableau a des cases de 8 bits
	copie_DMA((void*)tile,(void*)cbb, tile_size>>1, DMA_16NOW);

	u16 offset=32*32;
//	wait_vsync();
	for(int y=0;y<nb_tile_y;y++)
//		for(int x=0;x<nb_tile_x;x++)
			switch(get_size_flag())
			{
				case TEXT_BG_SIZE_256x256:
//					sbb[x+y*32]=map[(y+map_voff)*map_size_x+(map_hoff)+x];
					copie_DMA((void*)(map+((y+map_voff)*map_size_x+(map_hoff))),
						(void*)(sbb+y*32),nb_tile_x, DMA_16NOW);
					break;
				case TEXT_BG_SIZE_512x256:
//					if(x<32)
//						sbb[x+y*32]=map[(y+map_voff)*map_size_x+(map_hoff)+x];
//					else
//						sbb[(x-32)+y*32+offset]=map[(y+map_voff)*map_size_x+(map_hoff)+x];
					copie_DMA((void*)(map+((y+map_voff)*map_size_x+(map_hoff))),
						(void*)(sbb+y*32),nb_tile_x/2, DMA_16NOW);
					copie_DMA((void*)(map+((y+map_voff)*map_size_x+(map_hoff))+32),
						(void*)(sbb+y*32+offset),nb_tile_x/2, DMA_16NOW);
					break;
				case TEXT_BG_SIZE_256x512:
//					sbb[x+y*32]=map[(y+map_voff)*map_size_x+(map_hoff)+x];
					copie_DMA((void*)(map+((y+map_voff)*map_size_x+(map_hoff))),
						(void*)(sbb+y*32),nb_tile_x, DMA_16NOW);
					break;
				case TEXT_BG_SIZE_512x512:
//					if(y<32)
//						if(x<32)
//							sbb[x+y*32]=map[(y+map_voff)*map_size_x+(map_hoff)+x];
//						else
//							sbb[(x-32)+y*32+offset]=map[(y+map_voff)*map_size_x+(map_hoff)+x];
//					else
//						if(x<32)
//							sbb[x+((y-32)*32)+(2*offset)]=map[(y+map_voff)*map_size_x+(map_hoff)+x];
//						else
//							sbb[(x-32)+((y-32)*32)+(3*offset)]=map[(y+map_voff)*map_size_x+(map_hoff)+x];
					debug("a verifier %s : %d !!!",__FILE__,__LINE__);
					if(y<32)
					{
						copie_DMA((void*)(map+((y+map_voff)*map_size_x+(map_hoff))),
							(void*)(sbb+y*32),nb_tile_x/2, DMA_16NOW);
						copie_DMA((void*)(map+((y+map_voff)*map_size_x+(map_hoff))+32),
							(void*)(sbb+y*32+offset),nb_tile_x/2, DMA_16NOW);
					}
					else
					{
						copie_DMA((void*)(map+((y+map_voff)*map_size_x+(map_hoff))),
							(void*)(sbb+(y-32)*32+2*offset),nb_tile_x/2, DMA_16NOW);
						copie_DMA((void*)(map+((y+map_voff)*map_size_x+(map_hoff))+32),
							(void*)(sbb+(y-32)*32+3*offset),nb_tile_x/2, DMA_16NOW);
					}
					break;
		}		
		
	//c'est les registre qui permettent de deplacer le cadre ecran dans la partie de map
	*REG_BGXVOFS=screen_yoff;
	*REG_BGXHOFS=screen_xoff;
	
}


//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////



u16 background_text::size2pixel(u8 xy)
{
    u16 s=get_size_flag();
    if(s==TEXT_BG_SIZE_256x256&&xy=='x')		return 256;
    if(s==TEXT_BG_SIZE_256x256&&xy=='y')		return 256;
    if(s==TEXT_BG_SIZE_512x256&&xy=='x')		return 512;
    if(s==TEXT_BG_SIZE_512x256&&xy=='y')		return 256;
    if(s==TEXT_BG_SIZE_256x512&&xy=='x')		return 256;
    if(s==TEXT_BG_SIZE_256x512&&xy=='y')		return 512;
    if(s==TEXT_BG_SIZE_512x512&&xy=='x')		return 512;
    if(s==TEXT_BG_SIZE_512x512&&xy=='y')		return 512;
    
    return 0xFFFF;
}

u16 background_text::pixel2size(u16 sx,u16 sy)
{
    if(sx==256&&sy==256)		return TEXT_BG_SIZE_256x256;
    if(sx==512&&sy==256)		return TEXT_BG_SIZE_512x256;
    if(sx==256&&sy==512)		return TEXT_BG_SIZE_256x512;
    if(sx==512&&sy==512)		return TEXT_BG_SIZE_512x512;
    
    return 0xFFFF;
}



//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////


#include "font/mode_tile/vide.map.c"
#include "font/mode_tile/vide.raw.c"	//=normal_8.raw.c
#include "font/mode_tile/normal_8.raw.c"
#include "font/mode_tile/normal_16.raw.c"


void background_text::init_text(u16 col,u8 st,u16 t)
{
#ifdef _DEBUG_
	if(st!='n')			debug("%s : %d\n\tstyle %d",__FILE__,__LINE__,st);
	if(t!=8&&t!=16)		debug("%s : %d\n\ttaille %d",__FILE__,__LINE__,t);
#endif
    color=col;
    style=st;
    taille=t;
    
    copie_DMA((void *)vide_Map,(void *)map,vide_Width*vide_Height,DMA_16NOW);
    
	if(style=='n'&&taille==8)
	{
		delete [] tile;
		tile_size=normal_8_Tile;
		tile=new u8 [tile_size];
		copie_DMA((void *)normal_8_Tiles,(void *)tile,normal_8_Tile>>1,DMA_16NOW);
	}
	else if(style=='n'&&taille==16)
	{
		delete [] tile;
		tile_size=normal_16_Tile;
		tile=new u8 [tile_size];
		copie_DMA((void *)normal_16_Tiles,(void *)tile,normal_16_Tile>>1,DMA_16NOW);
 	}
 	
}

void background_text::write_text(u16 x,u16 y,char * mess,...)
{
	char s[256];
	va_list ap;
	va_start(ap,mess);
	vsprintf(s,mess,ap);
	va_end(ap);

	if(style=='n'&&taille==8)
	{
	    //on change la couleur ici,
	    //comme ca on pourra peut etre avoir differentes couleurs pour les differentes polices
		BG_palette[0xFF]=color;
		for(u16 i=0;i<strlen(s);i++)
		{
			map[y*map_size_x+x]=s[i];
			x+=1;
		}
	}
	else if(style=='n'&&taille==16)
	{
		BG_palette[0xFF]=color;
		for(u16 i=0;i<strlen(s);i++)
		{
			map[y*map_size_x+x]=s[i]*4;
			map[y*map_size_x+x+1]=s[i]*4+1;
			map[(y+1)*map_size_x+x]=s[i]*4+2;
			map[(y+1)*map_size_x+x+1]=s[i]*4+3;
			x+=2;
		}
	}
	
}




