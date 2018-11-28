#include "gba.h"
#include "background.h"

background::background()
{
    init();
}

background::~background()
{
	switch(no_bg)
	{
	    case 0: rem_mode(BG0_ENABLE);
			break;
	    case 1: rem_mode(BG1_ENABLE);
			break;
	    case 2: rem_mode(BG2_ENABLE);
			break;
	    case 3: rem_mode(BG3_ENABLE);
			break;
	}
    delete [] tile;
    init();
}

void background::init()
{
//    if(REG_BGXCNT) *REG_BGXCNT=0;
    REG_BGXCNT=NULL;
    
    no_bg=0;
    
    cbb=NULL;
    sbb=NULL;
    	
    map_size_x=map_size_y=0;
    tile=NULL;
    tile_size=0;
    	
	pas_screen=0;
	screen_xoff=0;
	screen_yoff=0;
	pas_map=0;
	map_hoff=0;
	map_voff=0;
	max_pas_screen=0;
	max_pas_map=0;
	
	nb_tile_x=nb_tile_y=0;
}


//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////

void background::add_tile(u8 no_col_pal)
{
	u8 * temp=tile;
	tile=new u8 [tile_size+8*8];
	copie_DMA((void *)temp,(void *)tile,tile_size>>1,DMA_16NOW);
	for(int i=tile_size;i<tile_size+8*8;i++)
		tile[i]=no_col_pal;
	tile_size+=8*8;
	delete [] temp;
}

void background::add_tile(u8 t[64])
{
	u8 * temp=tile;
	tile=new u8 [tile_size+8*8];
	copie_DMA((void *)temp,(void *)tile,tile_size>>1,DMA_16NOW);
	for(int i=tile_size;i<tile_size+8*8;i++)
		tile[i]=t[i-tile_size];
	tile_size+=8*8;
	delete [] temp;
}


//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////



//|---------------------|=map_hoff
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---~~~~~~~~~~~
//I  MAP (entiere)                                                           |           I
//I                    _______________________________---__________________ --- =map_voffI
//I                    !      partie de map (sbb)      |                  !              I
//I                    !                               |                  !              I
//I                    |---|=screen_xoff               |                  !              I
//I                    !   -------------------------  --- =screen_yoff    !              I
//I                    !   |                       |                      !              I
//I                    !   |                       |                      !              I
//I                    !   |      cadre d' ecran   |                      !              I
//I                    !   |                       |                      !              I
//I                    !   |                       |                      !              I
//I                    !   |                       |                      !              I
//I                    !   -------------------------                      !              I
//I                    !                                                  !              I
//I                    ____________________________________________________              I
//I                                                                                      I
//I                                                                                      I
//I                                                                                      I
//I                                                                                      I
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
						    
void background::left()
{
    //on bouge le cadre d'ecran sur la partie de map
    screen_xoff-=pas_screen;
    //si on sort de la partie de map
    if(screen_xoff<0)
	{
#ifdef _CADRE_
		screen_xoff=0;
#else
	    //on regarde si la partie de map se trouve tout a gauche sur la map generale
	    if(map_hoff==0)
	    {
	        //si c'est le cas, le cadre d'ecran est 0.
			screen_xoff=0;
			return;
		}
		//si la partie de map n'est pas tout à gauche, on la deplace
		map_hoff-=pas_map;
		//on regarde si on sort de la map generale
		if(map_hoff<0)
	    {
	        //si c'est le cas, on calcule de combien on sort
	        //(+map_voff : puisque map_voff est negatif)
	    	u16 dec=pas_map+map_hoff;
	    	//on place la partie de map tout a gauche de la map generale
			map_hoff=0;
			//on bouge le cadre d'ecran avec le nombre de tile que l'on a vraiment deplacé la partie de map
			screen_xoff+=dec*8;
			//une fois qu'on a replace le cadre de carte, mais que le cadre ecran est encore dehors
			if(screen_xoff<0) screen_xoff=0;
			//ne doit normalement jamais arrivé
			if(screen_xoff>(nb_tile_x-ECRAN_TILE_X)*8) debug("normalement jamais arrive 1 !!!");//screen_xoff=(NB_TILE_X-MAX_TILE_X)*8;
		}
		//si la nouvelle partie de map se trouve toujours dans la map generale
		else
		{
		    //on decale le cadre d'ecran du nombre qu'on a deplacé la partie de map
			screen_xoff+=pas_map*8;
			if(screen_xoff>(nb_tile_x-ECRAN_TILE_X)*8) debug("normalement jamais arrive 2 !!!");//screen_xoff=(NB_TILE_X-MAX_TILE_X)*8;
		}
#endif
	}
}

void background::up()
{
    screen_yoff-=pas_screen;
    if(screen_yoff<0)
	{
#ifdef _CADRE_
		screen_yoff=0;
#else
	    if(map_voff==0)
	    {
			screen_yoff=0;
			return;
		}
		map_voff-=pas_map;
		if(map_voff<0)
	    {
	    	u16 dec=pas_map+map_voff;
			map_voff=0;
			screen_yoff+=dec*8;
			if(screen_yoff<0) screen_yoff=0;
			if(screen_yoff>(nb_tile_y-ECRAN_TILE_Y)*8) debug("jamais arrive 1 !!!");//screen_yoff=(NB_TILE_Y-MAX_TILE_Y)*8;
		}
		else
		{
			screen_yoff+=pas_map*8;
			if(screen_yoff>(nb_tile_y-ECRAN_TILE_Y)*8) debug("jamais arrive 2 !!!");//screen_yoff=(NB_TILE_Y-MAX_TILE_Y)*8;
		}
#endif
	}
}

void background::right()
{
    //on bouge le cadre d'ecran sur la partie de map
    screen_xoff+=pas_screen;
    //si on sort de la partie de map
    if(screen_xoff+ECRAN_TILE_X*8>nb_tile_x*8)
	{
#ifdef _CADRE_
		screen_xoff=nb_tile_x*8-ECRAN_TILE_X*8;
#else
	    //on regarde si la partie de map se trouve tout a droite sur la map generale
		if(map_hoff+nb_tile_x==map_size_x)
		{
	        //si c'est le cas, le cadre d'ecran est au max à gauche.
		    screen_xoff=(nb_tile_x-ECRAN_TILE_X)*8;
		    return;
  		}
		//si la partie de map n'est pas tout à droite, on la deplace
		map_hoff+=pas_map;
		//on regarde si on sort de la map generale
	    if(map_hoff+nb_tile_x>map_size_x)
	    {
	        //si c'est le cas, on calcule de combien on sort
	        //dec : le nombre de tiles de la partie de carte qui sort de la map entiere
	    	u16 dec=pas_map-(map_hoff+nb_tile_x-map_size_x);
	    	//on place la partie de map tout a droite de la map generale
			map_hoff=map_size_x-nb_tile_x;
			//on bouge le cadre d'ecran avec le nombre de tile que l'on a vraiment deplacé la partie de map
			screen_xoff-=dec*8;
			//une fois qu'on a replace le cadre de carte, mais que le cadre ecran est encore dehors
//			if(map_hoff+screen_xoff/8+ECRAN_TILE_X>map_hoff+NB_TILE_X) screen_xoff=(NB_TILE_X-ECRAN_TILE_X)*8;
			if(screen_xoff/8+ECRAN_TILE_X>nb_tile_x) screen_xoff=(nb_tile_x-ECRAN_TILE_X)*8;
			if(screen_xoff<0) debug("normalement jamais arrive 3 !!!");//screen_xoff=0;
		}
		//si la nouvelle partie de map se trouve toujours dans la map generale
		else
		{
		    //on decale le cadre d'ecran du nombre qu'on a deplacé la partie de map
			screen_xoff-=pas_map*8;
			if(screen_xoff<0) debug("normalement jamais arrive 4 !!!");//screen_xoff=0;
		}
#endif
	}
}

void background::down()
{
    screen_yoff+=pas_screen;
    if(screen_yoff+ECRAN_TILE_Y*8>nb_tile_y*8)
	{
#ifdef _CADRE_
		screen_yoff=nb_tile_y*8-ECRAN_TILE_Y*8;
#else
		if(map_voff+nb_tile_y==map_size_y)
		{
		    screen_yoff=(nb_tile_y-ECRAN_TILE_Y)*8;
		    return;
  		}
		map_voff+=pas_map;
	    if(map_voff+nb_tile_y>map_size_y)
	    {
	        u16 dec=pas_map-(map_voff+nb_tile_y-map_size_y);
			map_voff=map_size_y-nb_tile_y;
			screen_yoff-=(dec*8);
//			if(map_voff+screen_yoff/8+ECRAN_TILE_Y>map_voff+NB_TILE_Y) screen_yoff=(NB_TILE_Y-ECRAN_TILE_Y)*8;
			if(screen_yoff/8+ECRAN_TILE_Y>nb_tile_y) screen_yoff=(nb_tile_y-ECRAN_TILE_Y)*8;
			if(screen_yoff<0) debug("jamais arrive 3 !!!");//screen_yoff=0;
		}
		else
		{
			screen_yoff-=pas_map*8;
			if(screen_yoff<0) debug("jamais arrive 4 !!!");//screen_yoff=0;
		}
#endif
	}
}


//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////



void background::set_pas_screen(u16 pas)
{
#ifdef _DEBUG_
    if(pas%8) debug("%s : %d \n\tpas %d",__FILE__,__LINE__,pas);
#endif
#ifdef _COND_
    if(pas%8) return;
#endif
	(pas<max_pas_screen)?pas_screen=pas:pas_screen=max_pas_screen;
	if(pas_screen>pas_map*8) pas_screen=pas_map*8;
}

void background::set_pas_map(u16 pas)
{
	(pas<max_pas_map)?pas_map=pas:pas_map=max_pas_map;
	if(pas_map*8<pas_screen) pas_map=pas_screen/8;
}


