#include "gba.h"
#include "sprite.h"


sprite_bitmap::sprite_bitmap()
{
    init();
}


sprite_bitmap::sprite_bitmap(const u8 * bmp,u16 s_x,u16 s_y,u16 ad,u16 sp_no,u16 nb_col)
{
    init();
    
#ifdef _DEBUG_
	if(!bmp) debug("%s : %d \n\tbmp %p",bmp);
	if(nb_col!=COLOR_16&&nb_col!=COLOR_256) debug("%s : %d \n\tcol %d",nb_col);
#endif
#ifdef _COND_
	if(!bmp||(nb_col!=COLOR_16&&nb_col!=COLOR_256)) return;
#endif

    bitmap=(u8 *)bmp;
    size_x=s_x;
    size_y=s_y;
    ad_deb=ad;
    sp_no_deb=sp_no;
    ad_next_free=ad_deb+s_x*s_y;
    
    if(ad_next_free>0x7FFF) debug("%s : %d \n\t ad_next_free %X    ",__FILE__,__LINE__,ad_next_free);
    
    sp_no_next_free=ad_next_free/16;
    
/*	//16 couleurs : 1 tiles = 32 bytes
	//256 couleurs : 1 tiles = 64 bytes
	//A VERIFIER : je pars du principe que tous les sprites sont soit 16 ou 256 !!!!!!!!!!!!!!!!!!
//A FAIRE !!!!!!
    if(nb_col==COLOR_256)
    	sp_no_next_free=ad_next_free/16;
   	else sp_no_next_free=ad_next_free/32;
*/
	update();
}

sprite_bitmap::~sprite_bitmap()
{
    init();
}


void sprite_bitmap::init()
{
    bitmap=NULL;
    size_x=size_y=0;
    ad_deb=ad_next_free=0;
    sp_no_deb=sp_no_next_free=0;
}

void sprite_bitmap::update()
{
    //remplie la zonne memoire et modifier les variables
    if(is_mode0()||is_mode1()||is_mode2())
		copie_DMA((void*)bitmap,(void*)(OAM_data+ad_deb),(size_x*size_y)/2,DMA_16NOW);
	else
		copie_DMA((void*)bitmap,(void*)(OAM_data+512*16+ad_deb),(size_x*size_y)/2,DMA_16NOW);
}
   		
//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////

tab_sprite_bitmap::tab_sprite_bitmap()
{
    nb=0;
    for(int i=0;i<MAX_SPRITE_BITMAP;i++)
		tab[i]=NULL;
}
tab_sprite_bitmap::~tab_sprite_bitmap()
{
    for(int i=0;i<MAX_SPRITE_BITMAP;i++)
    {
    	delete tab[i];
    	tab[i]=NULL;
   	}
   	nb=0;
}

sprite_bitmap * tab_sprite_bitmap::add_bitmap(const u8 * bmp,u16 s_x,u16 s_y,u16 col)
{
#ifdef _DEBUG_
    if(nb>=MAX_SPRITE_BITMAP-1) 				debug("%s : %d \n\t add_bitmap() nb %d",__FILE__,__LINE__,nb);
	if(s_x!=8&&s_x!=16&&s_x!=32&&s_x!=64) 		debug("%s : %d \n\ts_x %d",__FILE__,__LINE__,s_x);
	if(s_y!=8&&s_y!=16&&s_y!=32&&s_y!=64) 		debug("%s : %d \n\ts_y %d",__FILE__,__LINE__,s_y);
	if(col!=COLOR_16&&col!=COLOR_256) 			debug("%s : %d \n\tcol_pal %d",__FILE__,__LINE__,col);
#endif
#ifdef _COND_
    if((nb>=MAX_SPRITE_BITMAP-1)||(s_x!=8&&s_x!=16&&s_x!=32&&s_x!=64)||
		(s_y!=8&&s_y!=16&&s_y!=32&&s_y!=64)||(col!=COLOR_16&&col!=COLOR_256))
		return NULL;
#endif

    int i;
    for(i=0;i<nb;i++)
        if(tab[i]->bitmap==bmp)
			return tab[i];
			
    //l'image n'est pas en memoire et on va donc la stocker
	u16 last_ad_free=0;
	u16 last_sp_no_free=0;
	//si il y en a deja dans le tableau
    if(nb)
    {
		last_ad_free=tab[nb-1]->ad_next_free;
		last_sp_no_free=tab[nb-1]->sp_no_next_free;
	}
	
    tab[nb]=new sprite_bitmap(bmp,s_x,s_y,last_ad_free,last_sp_no_free,col);
    nb++;
    
    return tab[nb-1];
}

u16 tab_sprite_bitmap::rem_bitmap(sprite_bitmap * s)
{
    int i;
    for(i=0;i<nb;i++)
    	if(tab[i]==s) break;
    u16 ind=i;
    //ca se passe aussi quand nb=0;
    if(i==nb) return 0xFFFF;
   	
   	delete tab[i];
   	tab[i]=NULL;
   	
	for(;i<nb-1;i++)
		tab[i]=tab[i+1];
	nb--;
	tab[nb]=NULL;
	
	return ind;
}

