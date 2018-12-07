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
#include "sprite.h"

//tableau de tous les sprites
tab_sprite *			tab_sp;
//tableau de toutes les bitmaps
tab_sprite_bitmap * 	tab_sp_bmp;
//tableau de toutes les rotations
tab_sprite_rotation *	tab_sp_rot;

void init_sprite()
{
    init_OAM();
    tab_sp=new tab_sprite;
    tab_sp_bmp=new tab_sprite_bitmap;
    tab_sp_rot=new tab_sprite_rotation;
}

void delete_sprite()
{
    init_OAM();
    delete tab_sp;
    delete tab_sp_bmp;
    delete tab_sp_rot;
    tab_sp=NULL;
    tab_sp_bmp=NULL;
    tab_sp_rot=NULL;
}


void update_sprite()
{
    init_OAM();
    
    u16 nb_sprite=0;
	sprite * s=NULL;
    for(int i=0;i<tab_sp->get_nb();i++)
    {
    	s=tab_sp->get_sprite(i);
		if(s->get_visible_x()&&s->get_visible_y())
       	{
		    s->set_ind_sp(nb_sprite);
		    s->set_oam(&OAM_buffer[nb_sprite]);
		    
			//	attribute 0
			s->set_oam_y();
			//============================================================================
			//----------------------------------------------------------------------------
			//============================================================================
			s->set_oam_alpha_flag();
			s->set_oam_mosaic_flag();
			s->set_oam_nb_col_flag();
			s->set_oam_shape_flag();
			//	attribute 1
			s->set_oam_x();
			//============================================================================
			//----------------------------------------------------------------------------
			//============================================================================
			s->set_oam_form_flag();
			//	attribute 2
			s->set_oam_sp_no();
			s->set_oam_priority();
			s->set_oam_pal_no();
			
			if(s->get_my_sprite_rotation())
			{
				s->set_oam_rot_flag();
				s->set_oam_size_double_flag();
				s->set_oam_rot_ind();
				s->get_my_sprite_rotation()->update();
			}
			else
			{
				s->set_oam_h_flip_flag();
				s->set_oam_v_flip_flag();
   			}
			
		    nb_sprite++;
#ifdef _DEBUG_
		    if(nb_sprite>=MAX_SPRITE_OAM) debug("%s : %d \n\t trop de sprites a l'ecran >128",__FILE__,__LINE__);
#endif
#ifdef _COND_
		    if(nb_sprite>=MAX_SPRITE_OAM) return;
#endif
   	    }
   	    else
		{
			s->set_oam(NULL);
			s->set_ind_sp(0);
		}
    }
	copy_OAM();
}


void init_OAM()
{
    for(u16 i=0;i<MAX_SPRITE_OAM;i++)
    {
        OAM_buffer[i].attribute0=OUT_SCREEN;
        OAM_buffer[i].attribute1=OUT_SCREEN;
        OAM_buffer[i].attribute2=0;
        OAM_buffer[i].attribute3=0;
    }
}

void copy_OAM()
{
	wait_vsync();
	copie_DMA((void*)OAM_buffer,(void*)OAM_mem,MAX_SPRITE_OAM*4,DMA_16NOW);
}



//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////


sprite::sprite()
{
    init();
}

sprite::sprite(u16 alpha,u16 mosaic,u16 nb_col,u16 xx,u16 yy,
		u16 h_flip,u16 v_flip,u16 priority,u16 pal_no,const u8 * bitmap,u16 s_x,u16 s_y)
{
	init();
	
#ifdef _DEBUG_
	if(s_x!=8&&s_x!=16&&s_x!=32&&s_x!=64) 		debug("%s : %d \n\ts_x %d",__FILE__,__LINE__,s_x);
	if(s_y!=8&&s_y!=16&&s_y!=32&&s_y!=64) 		debug("%s : %d \n\ts_y %d",__FILE__,__LINE__,s_y);
	if(alpha!=MODE_NORMAL&&alpha!=MODE_ALPHA&&alpha!=MODE_WINDOWED) debug("%s : %d \n\talpha %d",__FILE__,__LINE__,alpha);
	if(mosaic!=MOSAIC&&mosaic!=0) 				debug("%s : %d \n\tmosaic %d",__FILE__,__LINE__,mosaic);
	if(nb_col!=COLOR_16&&nb_col!=COLOR_256) 	debug("%s : %d \n\tcol_pal %d",__FILE__,__LINE__,nb_col);
	if(h_flip!=HORIZONTAL_FLIP&&h_flip!=0) 		debug("%s : %d \n\th_flip %d",__FILE__,__LINE__,h_flip);
	if(v_flip!=VERTICAL_FLIP&&v_flip!=0) 		debug("%s : %d \n\tv_flip %d",__FILE__,__LINE__,v_flip);
	if(priority>=4) 							debug("%s : %d \n\tpriority %d",__FILE__,__LINE__,priority);
	if(pal_no>=16) 								debug("%s : %d \n\tpal_no %d",__FILE__,__LINE__,pal_no);
	if(!bitmap) 								debug("%s : %d \n\tbitmap %p",__FILE__,__LINE__,bitmap);
#endif
#ifdef _COND_
    if((s_x!=8&&s_x!=16&&s_x!=32&&s_x!=64)||(s_y!=8&&s_y!=16&&s_y!=32&&s_y!=64)||
		(alpha!=MODE_NORMAL&&alpha!=MODE_ALPHA&&alpha!=MODE_WINDOWED)||
		(mosaic!=MOSAIC&&mosaic!=0)||(nb_col!=COLOR_16&&nb_col!=COLOR_256)||(h_flip!=HORIZONTAL_FLIP&&h_flip!=0)||
		(v_flip!=VERTICAL_FLIP&&v_flip!=0)||(priority>=4)||(pal_no>=16)||(!bitmap))
		return;
#endif

    tab_sp->add_sprite(this);
    
    set_y(yy);
    set_alpha_flag(alpha);
    set_mosaic_flag(mosaic);
    
    set_x(xx);
    set_h_flip_flag(h_flip);
    set_v_flip_flag(v_flip);
    			
	change_bitmap(bitmap,s_x,s_y,nb_col,pal_no);
    set_priority(priority);
    
    map_x=x/8;
    map_y=y/8;
    
    (x>=0&&x<=SCREEN_WIDTH-sprite2sizex())?visible_x=true:visible_x=false;
    (y>=0&&y<=SCREEN_HEIGHT-sprite2sizey())?visible_y=true:visible_y=false;
}

sprite::sprite(u16 rot_flag,u16 sd,u16 alpha,u16 mosaic,u16 nb_col,
		u16 xx,u16 yy,u16 rot_ind,u16 priority,u16 pal_no,const u8 * bitmap,u16 s_x,u16 s_y)
{
	init();
	
#ifdef _DEBUG_
	if(rot_ind>=32)								debug("%s : %d \n\trot_ind %d",__FILE__,__LINE__,rot_ind);
	if(s_x!=8&&s_x!=16&&s_x!=32&&s_x!=64) 		debug("%s : %d \n\ts_x %d",__FILE__,__LINE__,s_x);
	if(s_y!=8&&s_y!=16&&s_y!=32&&s_y!=64) 		debug("%s : %d \n\ts_y %d",__FILE__,__LINE__,s_y);
	if(rot_flag!=ROTATION_FLAG&&rot_flag!=0) 	debug("%s : %d \n\trot_flag %d",__FILE__,__LINE__,rot_flag);
	if(sd!=SIZE_DOUBLE&&sd!=0) 					debug("%s : %d \n\tsd %d",__FILE__,__LINE__,sd);
	if(alpha!=MODE_NORMAL&&alpha!=MODE_ALPHA&&alpha!=MODE_WINDOWED) debug("%s : %d \n\talpha %d",__FILE__,__LINE__,alpha);
	if(mosaic!=MOSAIC&&mosaic!=0) 				debug("%s : %d \n\tmosaic %d",__FILE__,__LINE__,mosaic);
	if(nb_col!=COLOR_16&&nb_col!=COLOR_256) 	debug("%s : %d \n\tcol_pal %d",__FILE__,__LINE__,nb_col);
	if(rot_ind>=32) 							debug("%s : %d \n\trot_ind %d",__FILE__,__LINE__,rot_ind);
	if(priority>=4) 							debug("%s : %d \n\tpriority %d",__FILE__,__LINE__,priority);
	if(pal_no>=16) 								debug("%s : %d \n\tpal_no %d",__FILE__,__LINE__,pal_no);
	if(!bitmap) 								debug("%s : %d \n\tbitmap %p",__FILE__,__LINE__,bitmap);
#elif _COND_
    if((rot_ind>=32)||(s_x!=8&&s_x!=16&&s_x!=32&&s_x!=64)||(s_y!=8&&s_y!=16&&s_y!=32&&s_y!=64)||
		(rot_flag!=ROTATION_FLAG&&rot_flag!=0)||(sd!=SIZE_DOUBLE&&sd!=0)||
		(alpha!=MODE_NORMAL&&alpha!=MODE_ALPHA&&alpha!=MODE_WINDOWED)||(mosaic!=MOSAIC&&mosaic!=0)||
		(nb_col!=COLOR_16&&nb_col!=COLOR_256)||(rot_ind>=32)||(priority>=4)||(pal_no>=16)||(!bitmap))
		return;
#endif

    tab_sp->add_sprite(this);
	my_sprite_rotation=&(tab_sp_rot->tab[rot_ind]);
  
    set_y(yy);
    set_rot_flag(rot_flag);
    //set_size_double_flag(sd);		//plus bas
    set_alpha_flag(alpha);
    set_mosaic_flag(mosaic);
    
    set_x(xx);
    set_rot_ind(rot_ind);
    
	change_bitmap(bitmap,s_x,s_y,nb_col,pal_no);
    set_priority(priority);
    
    //au depart, une unité correspond à un tile de 8x8
    map_x=x/8;
    map_y=y/8;
    
    (x>=0&&x<=SCREEN_WIDTH-sprite2sizex())?visible_x=true:visible_x=false;
    (y>=0&&y<=SCREEN_HEIGHT-sprite2sizey())?visible_y=true:visible_y=false;
    
    //il faut le mettre apres initialisation de shape et form
    //parce que dans cette fonction, on utilise c'est caracteristiques
    set_size_double_flag(sd);
    
    //on initialise la rotation et l'echelle
    my_sprite_rotation->update();
}

sprite::~sprite()
{
    int i;
//peut etre mettre tout ca aussi dans une fonction "menage()" et l'appeler de temps en temps
//pour vraiment vider les zones memoires
//la il restera des bitmaps qui ne sont plus en relation avec des sprites

	//on reinitialise la rotation, si c'est le dernier sprite a l'utiliser
	if(my_sprite_rotation)
	{
		u8 last_rot=1;
		for(i=0;i<tab_sp->nb;i++)
		{
		    if(tab_sp->tab[i]->my_sprite_rotation==my_sprite_rotation&&tab_sp->tab[i]!=this) last_rot=0;
	 	}
	 	if(last_rot)
 		{
        	my_sprite_rotation->init(0,0,0,0,INT2FIXED(1),INT2FIXED(1));
        	my_sprite_rotation->update();
   		}
 	}
 	
	//on enleve la bitmap de la memoire, si c'est le dernier sprite a l'utiliser
 	if(my_sprite_bitmap)
 	{
		u8 last_bmp=1;
		for(i=0;i<tab_sp->nb;i++)
		{
		    if(tab_sp->tab[i]->my_sprite_bitmap==my_sprite_bitmap&&tab_sp->tab[i]!=this)
			{
				last_bmp=0;
				break;
			}
	 	}
	 	if(last_bmp)
 		{
	 		u16 ind_del=tab_sp_bmp->rem_bitmap(my_sprite_bitmap);
	 		if(ind_del==0xFFFF) debug("lsdnflskjdnfsdlnfsldn");
 		}
  	}
 	
    //on supprime le sprite dans la liste de tous les sprites
    for(i=0;i<tab_sp->nb;i++)
    	if(tab_sp->tab[i]==this) break;
   	if(i!=tab_sp->nb)
   	{
	   	for(;i<tab_sp->nb-1;i++)
	   		tab_sp->tab[i]=tab_sp->tab[i+1];
		tab_sp->nb--;
		tab_sp->tab[tab_sp->nb]=NULL;
	}

    init();
    
}

void sprite::init()
{
    if(oam)
    {
        oam->attribute0=OUT_SCREEN;
        oam->attribute1=OUT_SCREEN;
        oam->attribute2=0;
	}
    
    oam=NULL;
    ind_sp=0;
    
    my_sprite_bitmap=NULL;
    my_sprite_rotation=NULL;
    
	pas_move_x=0;
	pas_move_y=0;
	
	map_x=map_y=0;
	
	visible_x=visible_y=false;
	
	y=OUT_SCREEN;
//========================================================================================
//----------------------------------------------------------------------------------------
	rot_flag=0;
	size_double_flag=0;
//========================================================================================
	alpha_flag=0;
	mosaic_flag=0;
	nb_col_flag=0;
	shape_flag=0;
	
	x=OUT_SCREEN;
//========================================================================================
	rot_ind=0;
//----------------------------------------------------------------------------------------
	h_flip_flag=0;
	v_flip_flag=0;
//========================================================================================
	form_flag=0;
	
	sp_no=0;
	priority=0;
	pal_no=0;
	
}

//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////


void sprite::change_bitmap(const u8 * bitmap,u16 s_x,u16 s_y,u16 nb_col,u16 pal_no)
{
    my_sprite_bitmap=tab_sp_bmp->add_bitmap(bitmap,s_x,s_y,nb_col);
    
    if(is_mode0()||is_mode1()||is_mode2())
    	set_sp_no(my_sprite_bitmap->sp_no_deb);
    else
    	set_sp_no(my_sprite_bitmap->sp_no_deb+512);
    
    set_nb_col_flag(nb_col);
    set_shape_flag(size2shape(s_x,s_y));
    set_form_flag(size2form(s_x,s_y));
    set_pal_no(pal_no);
}

//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////



void sprite::right()
{
    x+=pas_move_x;
    (x>=0&&x<=SCREEN_WIDTH-sprite2sizex())?visible_x=true:visible_x=false;
}
void sprite::left()
{
    x-=pas_move_x;
    (x>=0&&x<=SCREEN_WIDTH-sprite2sizex())?visible_x=true:visible_x=false;
}
void sprite::up()
{
    y-=pas_move_y;
    (y>=0&&y<=SCREEN_HEIGHT-sprite2sizey())?visible_y=true:visible_y=false;
}
void sprite::down()
{
    y+=pas_move_y;
    (y>=0&&y<=SCREEN_HEIGHT-sprite2sizey())?visible_y=true:visible_y=false;
}


bool sprite::collision(sprite * s)
{
    if(map_x==s->map_x&&map_y==s->map_y) return true;
    return false;
}


//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////


u16 sprite::size2shape(u16 s_x,u16 s_y)
{
    if(s_x==s_y)	return SQUARE;
	if(s_x<s_y)		return TALL;
	if(s_x>s_y)		return WIDE;
#ifdef _DEBUG_
	debug("%s : %d \n\t size2shape() %d %d",__FILE__,__LINE__,s_x,s_y);
#endif
	return 0xFFFF;
}
u16 sprite::size2form(u16 s_x,u16 s_y)
{
    if(s_x==8&&s_y<=16)												return SIZE_8;
    if((s_x==16&&s_y==16)||(s_x==8&&s_y==32)||(s_x==32&&s_y==8))	return SIZE_16;
    if((s_x==32&&s_y==32)||(s_x==16&&s_y==32)||(s_x==32&&s_y==32))	return SIZE_32;
    if(s_x==64||s_y==64)											return SIZE_64;
#ifdef _DEBUG_
	debug("%s : %d \n\t size2form() %d %d",__FILE__,__LINE__,s_x,s_y);
#endif
	return 0xFFFF;
}

u16 sprite::sprite2sizex()
{
    u16 shape=get_shape_flag();
	u16 form=get_form_flag();
    
    if(shape==SQUARE&&form==SIZE_8)		return 8;
    if(shape==SQUARE&&form==SIZE_16)	return 16;
    if(shape==SQUARE&&form==SIZE_32)	return 32;
    if(shape==SQUARE&&form==SIZE_64)	return 64;
    
    if(shape==TALL&&form==SIZE_8)		return 8;
    if(shape==TALL&&form==SIZE_16)		return 8;
    if(shape==TALL&&form==SIZE_32)		return 16;
    if(shape==TALL&&form==SIZE_64)		return 32;
    
    if(shape==WIDE&&form==SIZE_8)		return 16;
    if(shape==WIDE&&form==SIZE_16)		return 32;
    if(shape==WIDE&&form==SIZE_32)		return 32;
    if(shape==WIDE&&form==SIZE_64)		return 64;
#ifdef _DEBUG_
	debug("%s : %d \n\t sprite2sizex() %d %d",__FILE__,__LINE__,shape,form);
#endif
    return 0xFFFF;
}

u16 sprite::sprite2sizey()
{
    u16 shape=get_shape_flag();
	u16 form=get_form_flag();
    
    if(shape==SQUARE&&form==SIZE_8)		return 8;
    if(shape==SQUARE&&form==SIZE_16)	return 16;
    if(shape==SQUARE&&form==SIZE_32)	return 32;
    if(shape==SQUARE&&form==SIZE_64)	return 64;
    
    if(shape==TALL&&form==SIZE_8)		return 16;
    if(shape==TALL&&form==SIZE_16)		return 32;
    if(shape==TALL&&form==SIZE_32)		return 32;
    if(shape==TALL&&form==SIZE_64)		return 64;
    
    if(shape==WIDE&&form==SIZE_8)		return 8;
    if(shape==WIDE&&form==SIZE_16)		return 8;
    if(shape==WIDE&&form==SIZE_32)		return 16;
    if(shape==WIDE&&form==SIZE_64)		return 32;
#ifdef _DEBUG_
	debug("%s : %d \n\t sprite2sizey() %d %d",__FILE__,__LINE__,shape,form);
#endif
    return 0xFFFF;
}

//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////

void sprite::set_size_double_flag(u16 sd)
{
	if(sd!=0&&sd!=SIZE_DOUBLE)
#ifdef _DEBUG_
		debug("%s : %d \n\t set_size_double_flag() sd %d",__FILE__,__LINE__,sd);
#elif _COND_
		return;
#endif
	if(!my_sprite_rotation) return;
	
 	if(size_double_flag!=sd)
 	{
		u16 px=pas_move_x;
		u16 py=pas_move_y;
		pas_move_x=sprite2sizex()/2;
	 	pas_move_y=sprite2sizey()/2;
	 	
		if(sd!=SIZE_DOUBLE)
		{
		    right();
		    down();
	 	}
	 	else
	 	{
  			//dans le cas ou le sprite se trouve pres du bord droite ou haut
  			//si on fait -, on a un nombre negatif, et c'est pas cool !!!
  			if(x<pas_move_x||y<pas_move_y)
  			{
				pas_move_x=px;
			 	pas_move_y=py;
			 	return;
	    	}
	 		left();
	 		up();
	 	}
	 	
		size_double_flag=sd;
		
		pas_move_x=px;
	 	pas_move_y=py;
 	}
}


//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////


tab_sprite::tab_sprite()
{
    nb=0;
    for(int i=0;i<MAX_SPRITE;i++)
    	tab[i]=NULL;
}

tab_sprite::~tab_sprite()
{
    for(int i=0;i<MAX_SPRITE;i++)
    {
    	delete tab[i];
    	tab[i]=NULL;
   	}
   	nb=0;
}

void tab_sprite::add_sprite(sprite * s)
{
#ifdef _DEBUG_
    if(nb>=MAX_SPRITE-1) debug("%s : %d \n\t add_sprite() nb %d",__FILE__,__LINE__,nb);
#endif
#ifdef _COND_
    if(nb>=MAX_SPRITE-1) return;
#endif
	tab[nb]=s;
	nb++;
}

void tab_sprite::rem_sprite(sprite * s)
{
	int i;
    for(i=0;i<nb;i++)
    	if(tab[i]==s) break;
   	if(i==nb) return;
	delete tab[i];
	tab[i]=NULL;
   	for(;i<nb-1;i++)
   		tab[i]=tab[i+1];
	nb--;
	tab[nb]=NULL;
}

void tab_sprite::rem_sprite(u16 ind)
{
#ifdef _DEBUG_
    if(ind>=nb) debug("%s : %d \n\tget_sprite() ind %d >= nb %d",__FILE__,__LINE__,ind,nb);
#endif
#ifdef _COND_
    if(ind>=nb) return;
#endif
	delete tab[ind];
	tab[ind]=NULL;
   	for(int i=ind;i<nb-1;i++)
   		tab[i]=tab[i+1];
	nb--;
	tab[nb]=NULL;
}

sprite * tab_sprite::get_sprite(u16 ind)
{
#ifdef _DEBUG_
    if(ind>=nb) debug("%s : %d \n\tget_sprite() ind %d >= nb %d",__FILE__,__LINE__,ind,nb);
#endif
#ifdef _COND_
    if(ind>=nb) return NULL;
#endif
	return tab[ind];
}

void tab_sprite::change_bitmap(const u8 * bitmap,u16 s_x,u16 s_y,u16 nb_col,u16 pal_no)
{
    for(int i=0;i<nb;i++)
    	tab[i]->change_bitmap(bitmap,s_x,s_y,nb_col,pal_no);
}

void tab_sprite::left()
{
    for(int i=0;i<nb;i++)
    	tab[i]->left();
}
void tab_sprite::right()
{
    for(int i=0;i<nb;i++)
    	tab[i]->right();
}
void tab_sprite::up()
{
    for(int i=0;i<nb;i++)
    	tab[i]->up();
}
void tab_sprite::down()
{
    for(int i=0;i<nb;i++)
    	tab[i]->down();
}



