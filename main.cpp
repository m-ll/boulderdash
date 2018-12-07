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
#include "background.h"
#include "background_text.h"
#include "background_rotation.h"
#include "bg_boulder.h"

#include "divers.h"

#include "ext_include.h"

#include "level/level1/master_mike_level.pal.h"
#include "level/level1/fond.raw.h"
#include "level/level1/fond.map.h"
#include "level/level1/mike_level.raw.h"
#include "level/level1/mike_level.map.h"
#include "level/level1/mike_level.h"

#include "level/level2/master_mike_level2.pal.h"
#include "level/level2/fond2.raw.h"
#include "level/level2/fond2.map.h"
#include "level/level2/mike_level2.raw.h"
#include "level/level2/mike_level2.map.h"
#include "level/level2/mike_level2.h"

#include "level/level3/master_mike_level3.pal.h"
#include "level/level3/fond3.raw.h"
#include "level/level3/fond3.map.h"
#include "level/level3/mike_level3.raw.h"
#include "level/level3/mike_level3.map.h"
#include "level/level3/mike_level3.h"

#include "level/level4/master_mike_level4.pal.h"
#include "level/level4/fond4.raw.h"
#include "level/level4/fond4.map.h"
#include "level/level4/mike_level4.raw.h"
#include "level/level4/mike_level4.map.h"
#include "level/level4/mike_level4.h"

#include "level/level5/master_mike_level5.pal.h"
#include "level/level5/fond5.raw.h"
#include "level/level5/fond5.map.h"
#include "level/level5/mike_level5.raw.h"
#include "level/level5/mike_level5.map.h"
#include "level/level5/mike_level5.h"

#include "level/level6/master_mike_level6.pal.h"
#include "level/level6/fond6.raw.h"
#include "level/level6/fond6.map.h"
#include "level/level6/mike_level6.raw.h"
#include "level/level6/mike_level6.map.h"
#include "level/level6/mike_level6.h"

#include "level/level7/master_mike_level7.pal.h"
#include "level/level7/fond7.raw.h"
#include "level/level7/fond7.map.h"
#include "level/level7/mike_level7.raw.h"
#include "level/level7/mike_level7.map.h"
#include "level/level7/mike_level7.h"

#include "font/mode_tile/vide.map.c"
#include "font/mode_tile/vide.raw.c"

#include "son/perdu.h"
#include "son/gagne.h"
#include "son/oeuf_mange.h"
#include "son/sable.h"
#include "son/tombe_pierre.h"
#include "son/tombe_oeuf.h"

int main(void)
{
    presentation();
    
	u8 max_level=1;
	background_text * fond=NULL;
	background_text * text=NULL;
	bg_boulder * bg=NULL;
	
	u16 nb_oeuf_left=0;
	u16 time_m=0;
	u16 time_s=0;

	//on recupere le level le plus haut atteint
	char * magic=new char [12];
	load_string(OFFSET_IS_SAVE,12,magic);
	if(strcmp(magic,"boulderdash")==0)
	{
	    max_level=load_8(OFFSET_NO_LEVEL);
 	}
	s8 no_level=max_level;
	
	set_mode(MODE_1|OBJ_ENABLE|OBJ_MAP_1D);
	
	text=new background_text(1,0,1,BG_MOSAIC_ENABLE,BG_COLOR_256,25,TEXT_BG_SIZE_256x256,
								vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile);
	text->set_pas_screen(0);
	text->set_pas_map(0);
	text->init_text(RGB(25,20,5),'n',16);
	
	//par defaut, c'est le plus level atteint
	text->write_text(2,4,"CHOIX LEVEL :");
	text->write_text(15,8,"%c",no_level+48+16);
	text->update();
	
	//on choisit son level entre 1 et le plus haut
	for(;;)
	{
		if(key_down(KEY_UP))
		{
			no_level+=2;
			if(no_level>max_level) no_level=max_level;
			text->write_text(15,8,"%c",no_level+48+16);
			text->update();
			wait_time(0,500);
		}
		else if(key_down(KEY_DOWN))
		{
			no_level-=2;
			if(no_level<1) no_level=1;
			text->write_text(15,8,"%c",no_level+48+16);
			text->update();
			wait_time(0,500);
		}
		else if(key_down(KEY_START))
			break;
	}
	
	//pour le son
    enable_interrupt(INT_TIMER0|INT_TIMER1);
	
/*
	u8 alpha=8;
	//les sprites avec la flag alpha sont transparents par rapport au bg0
	set_alpha(16,alpha);
	set_target(0,SFX_ALPHA,TARGET2_BG0);
*/

//----------------------------------------------------------------------------------------
//BACK
	if(no_level==1)
	{
		next_level(fond,text,bg,master_mike_level_Palette,mike_Level,
						fond_Map,fond_Width,fond_Height,fond_Tiles,fond_Tile,
						vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
						mike_level_Map,mike_level_Width,mike_level_Height,mike_level_Tiles,mike_level_Tile);
		nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_1/100;
		time_m=TIME_1('m');
		time_s=TIME_1('s');
	}
	else if(no_level==2)
	{
		next_level(fond,text,bg,master_mike_level2_Palette,mike_Level2,
						fond2_Map,fond2_Width,fond2_Height,fond2_Tiles,fond2_Tile,
						vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
						mike_level2_Map,mike_level2_Width,mike_level2_Height,mike_level2_Tiles,mike_level2_Tile);
		nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_2/100;
		time_m=TIME_2('m');
		time_s=TIME_2('s');
	}
	else if(no_level==3)
	{
		next_level(fond,text,bg,master_mike_level3_Palette,mike_Level3,
						fond3_Map,fond3_Width,fond3_Height,fond3_Tiles,fond3_Tile,
						vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
						mike_level3_Map,mike_level3_Width,mike_level3_Height,mike_level3_Tiles,mike_level3_Tile);
		nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_3/100;
		time_m=TIME_3('m');
		time_s=TIME_3('s');
	}
	else if(no_level==4)
	{
		next_level(fond,text,bg,master_mike_level4_Palette,mike_Level4,
						fond4_Map,fond4_Width,fond4_Height,fond4_Tiles,fond4_Tile,
						vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
						mike_level4_Map,mike_level4_Width,mike_level4_Height,mike_level4_Tiles,mike_level4_Tile);
		nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_4/100;
		time_m=TIME_4('m');
		time_s=TIME_4('s');
	}
	else if(no_level==5)
	{
		next_level(fond,text,bg,master_mike_level5_Palette,mike_Level5,
						fond5_Map,fond5_Width,fond5_Height,fond5_Tiles,fond5_Tile,
						vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
						mike_level5_Map,mike_level5_Width,mike_level5_Height,mike_level5_Tiles,mike_level5_Tile);
		nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_5/100;
		time_m=TIME_5('m');
		time_s=TIME_5('s');
	}
	else if(no_level==6)
	{
		next_level(fond,text,bg,master_mike_level6_Palette,mike_Level6,
						fond6_Map,fond6_Width,fond6_Height,fond6_Tiles,fond6_Tile,
						vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
						mike_level6_Map,mike_level6_Width,mike_level6_Height,mike_level6_Tiles,mike_level6_Tile);
		nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_6/100;
		time_m=TIME_6('m');
		time_s=TIME_6('s');
	}
	else if(no_level==7)
	{
		next_level(fond,text,bg,master_mike_level7_Palette,mike_Level7,
						fond7_Map,fond7_Width,fond7_Height,fond7_Tiles,fond7_Tile,
						vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
						mike_level7_Map,mike_level7_Width,mike_level7_Height,mike_level7_Tiles,mike_level7_Tile);
		nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_7/100;
		time_m=TIME_7('m');
		time_s=TIME_7('s');
	}
	
	
//----------------------------------------------------------------------------------------
//SPRITE
	copie_DMA((void*)master_sprite_Palette,(void*)OBJ_palette,256,DMA_16NOW);
	
	sprite * hero=new sprite(MODE_NORMAL,MOSAIC,COLOR_256,bg->get_hero_x()*16,bg->get_hero_y()*16,0,0,0,0,hero_Bitmap,hero_Width,hero_Height);
	hero->set_pas_move(16);

//----------------------------------------------------------------------------------------
//UPDATE
    update_sprite();
	bg->update();
	
	tab_sprite * oeuf=bg->get_oeuf();
	tab_sprite * pierre=bg->get_pierre();
	
	u16 tile_transparent=0;
	bool change_boule=false;
	u8 freq_boule=0;
	bool perdu=false,gagne=false;
	u8 res_tombe=0;
	bool do_oeuf=false;
	bool do_sable=false;
	
	u16 nb_vie=NB_VIE;
	
	char * text_status="oeuf:%3d  vie:%2d       %02d:%02d";
	text->write_text(1,1,text_status,bg->get_nb_oeuf()-nb_oeuf_left,nb_vie,time_m,time_s);
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------

	init_time();
	while(1)
	{
		if(change_time())
		{
		    if(!time_s)
			{
				time_m--;
				time_s=60;
			}
		    time_s--;
			text->write_text(1,1,text_status,bg->get_nb_oeuf()-nb_oeuf_left,nb_vie,time_m,time_s);
			if(!time_m&&!time_s) perdu=true;
			
			init_time();
  		}
  		
		if(key_down(KEY_RIGHT))
		{
			bg->set_level(hero->get_map_x(),hero->get_map_y(),'v');
		    if(hero->get_h_flip_flag()) hero->set_h_flip_flag(0);
		    hero->add_map_x(1);
		    if(hero->get_map_x()<bg->get_map_size_x()/2)
		    {
	 			hero->right();
				if(bg->get_level(hero->get_map_x(),hero->get_map_y())=='m')
			    {
					hero->left();
					hero->add_map_x(-1);
				}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())==' ')
			    {
					do_sable=true;
				}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())=='p')
				{
				    if(bg->get_level(hero->get_map_x()+1,hero->get_map_y())!='v')
				    {
						hero->left();
						hero->add_map_x(-1);
					}
					else
					{
						for(int i=0;i<pierre->get_nb();i++)
							if(hero->collision(pierre->get_sprite(i)))
							{
							    pierre->get_sprite(i)->right();
							    pierre->get_sprite(i)->add_map_x(1);
							    bg->set_level(hero->get_map_x()+1,hero->get_map_y(),'p');
			    			}
	    			}
				}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())=='o')
					for(int i=oeuf->get_nb()-1;i>=0;i--)
						if(hero->collision(oeuf->get_sprite(i)))
						{
						    oeuf->rem_sprite(i);
						    bg->set_level(hero->get_map_x(),hero->get_map_y(),'v');
							if(bg->get_nb_oeuf()==nb_oeuf_left) gagne=true;
							text->write_text(1,1,text_status,bg->get_nb_oeuf()-nb_oeuf_left,nb_vie,time_m,time_s);
							do_oeuf=true;
						}
			
	 			if(hero->get_x()+hero->sprite2sizex()>240-32&&hero->get_map_x()<=bg->get_map_size_x()/2-1-2)
				{
					hero->left();
					pierre->left();
					oeuf->left();
					bg->right();
				}
			}
			else hero->set_map_x(bg->get_map_size_x()/2-1);
			
			bg->change_tile_16(hero->get_map_x(),hero->get_map_y(),
								tile_transparent,tile_transparent,tile_transparent,tile_transparent);
			bg->set_level(hero->get_map_x(),hero->get_map_y(),'x');
		}
//----------------------------------------------------------------------------------------
		else if(key_down(KEY_LEFT))
		{
			bg->set_level(hero->get_map_x(),hero->get_map_y(),'v');
		    if(!hero->get_h_flip_flag()) hero->set_h_flip_flag(HORIZONTAL_FLIP);
		    hero->add_map_x(-1);
		    if(hero->get_map_x()>=0)
		    {
			    hero->left();
				if(bg->get_level(hero->get_map_x(),hero->get_map_y())=='m')
				{
					hero->right();
					hero->add_map_x(1);
    			}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())==' ')
			    {
					do_sable=true;
				}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())=='p')
				{
				    //on peut laisser comme ca puisque tous les cotés sont des murs
				    if(bg->get_level(hero->get_map_x()-1,hero->get_map_y())!='v')
				    {
						hero->right();
						hero->add_map_x(1);
					}
					else
					{
					    //on cherche la pierre a deplacer
						for(int i=0;i<pierre->get_nb();i++)
							if(hero->collision(pierre->get_sprite(i)))
							{
							    pierre->get_sprite(i)->left();
							    pierre->get_sprite(i)->add_map_x(-1);
							    bg->set_level(hero->get_map_x()-1,hero->get_map_y(),'p');
			    			}
	    			}
				}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())=='o')
					for(int i=oeuf->get_nb()-1;i>=0;i--)
						if(hero->collision(oeuf->get_sprite(i)))
						{
						    oeuf->rem_sprite(i);
						    bg->set_level(hero->get_map_x(),hero->get_map_y(),'v');
							if(bg->get_nb_oeuf()==nb_oeuf_left) gagne=true;
							text->write_text(1,1,text_status,bg->get_nb_oeuf()-nb_oeuf_left,nb_vie,time_m,time_s);
							do_oeuf=true;
						}

	 			if(hero->get_x()<32&&hero->get_map_x()>=2)
				{
					hero->right();
					pierre->right();
					oeuf->right();
					bg->left();
				}
			}
			else hero->set_map_x(0);
			
			bg->change_tile_16(hero->get_map_x(),hero->get_map_y(),
								tile_transparent,tile_transparent,tile_transparent,tile_transparent);
			bg->set_level(hero->get_map_x(),hero->get_map_y(),'x');
		}
//----------------------------------------------------------------------------------------
		else if(key_down(KEY_UP))
		{
		    //la ou se trouve le hero, on met vide
			bg->set_level(hero->get_map_x(),hero->get_map_y(),'v');
		    //on monte de 1 dans la map
		    //si on est tout en haut, on fait rien
		    hero->add_map_y(-1);
		    if(hero->get_map_y()>=0)
		    {
		        //si on n'est pas sur le bord haut de la map,on monte d'un cran
		        hero->up();
				//on regarde si on trouve pas une pierre, un oeuf ou un mur
				if((bg->get_level(hero->get_map_x(),hero->get_map_y())=='m')||
					(bg->get_level(hero->get_map_x(),hero->get_map_y())=='p'))
				{
					hero->down();
					hero->add_map_y(1);
				}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())==' ')
			    {
					do_sable=true;
				}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())=='o')
				//si c'est un oeuf, on l'efface
					for(int i=oeuf->get_nb()-1;i>=0;i--)
						if(hero->collision(oeuf->get_sprite(i)))
						{
						    oeuf->rem_sprite(i);
						    bg->set_level(hero->get_map_x(),hero->get_map_y(),'v');
							if(bg->get_nb_oeuf()==nb_oeuf_left) gagne=true;
							text->write_text(1,1,text_status,bg->get_nb_oeuf()-nb_oeuf_left,nb_vie,time_m,time_s);
							do_oeuf=true;
						}
					
		        //si on n'est en haut de l'ecran à 2 blocs, on ne fait pas bouger le hero
		        //et les autres items descendent
			    if(hero->get_y()<32&&hero->get_map_y()>=2) 
			    {
					hero->down();
					pierre->down();
					oeuf->down();
					bg->up();
				}
			}
			//on le met a 0, puisque le sprite est tout en haut de la carte
			else hero->set_map_y(0);
			
			//on remplit les 4 tiles du hero
			bg->change_tile_16(hero->get_map_x(),hero->get_map_y(),
								tile_transparent,tile_transparent,tile_transparent,tile_transparent);
			//la ou se trouve le hero, on met un 'x'
			bg->set_level(hero->get_map_x(),hero->get_map_y(),'x');
		}
//----------------------------------------------------------------------------------------
		else if(key_down(KEY_DOWN))
		{
			bg->set_level(hero->get_map_x(),hero->get_map_y(),'v');
		    //on descend de 1 dans la map
		    //si on est tout en bas, on fait rien
		    hero->add_map_y(1);
		    if(hero->get_map_y()<bg->get_map_size_y()/2)
		    {
		        //si on n'est pas sur le bord bas de la map,on descend d'un cran
		    	hero->down();
				if((bg->get_level(hero->get_map_x(),hero->get_map_y())=='m')||
					(bg->get_level(hero->get_map_x(),hero->get_map_y())=='p'))
				{
					hero->up();
					hero->add_map_y(-1);
				}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())==' ')
			    {
					do_sable=true;
				}
				else if(bg->get_level(hero->get_map_x(),hero->get_map_y())=='o')
					for(int i=oeuf->get_nb()-1;i>=0;i--)
						if(hero->collision(oeuf->get_sprite(i)))
						{
						    oeuf->rem_sprite(i);
						    bg->set_level(hero->get_map_x(),hero->get_map_y(),'v');
							if(bg->get_nb_oeuf()==nb_oeuf_left) gagne=true;
							text->write_text(1,1,text_status,bg->get_nb_oeuf()-nb_oeuf_left,nb_vie,time_m,time_s);
							do_oeuf=true;
						}

		        //si on n'est en bas de l'ecran à 2 blocs, on ne fait pas bouger le hero
		        //et les autres items montent
			    if(hero->get_y()+hero->sprite2sizey()>160-32&&hero->get_map_y()<=(bg->get_map_size_y()/2-1)-2)
				{
					hero->up();
					pierre->up();
					oeuf->up();
					bg->down();
				}
			}
			//on le met a mike_level_Height/2-1, puisque le sprite est tout en bas de la carte
			else hero->set_map_y(bg->get_map_size_y()/2-1);
			
			bg->change_tile_16(hero->get_map_x(),hero->get_map_y(),
								tile_transparent,tile_transparent,tile_transparent,tile_transparent);
			bg->set_level(hero->get_map_x(),hero->get_map_y(),'x');
		}
//----------------------------------------------------------------------------------------
		else if(key_down(KEY_L))
		{
  		}
		else if(key_down(KEY_R))
		{
  		}
		else if(key_down(KEY_A))
		{
  		}
		else if(key_down(KEY_B))
		{
  		}
		else if(key_down(KEY_SELECT))
		{
  		}
  		else if(key_down(KEY_START))
  		{
  		    wait_time(0,200);
  		    wait_key(KEY_START);
		}
		
	    update_sprite();
		bg->update();
		text->update();
	    
		res_tombe=bg->tomber();
		//le hero est ecrasé
	  	if(res_tombe==ECRASE_HERO)
	  	{
	  	    perdu=true;
		}
  		
  		if(res_tombe>>1)
  		{
			if(res_tombe&PLAY_SOUND_PIERRE) play_sound_dsb(&tombe_pierre_wav);
//			else if(res_tombe&PLAY_SOUND_OEUF) play_sound_dsa(&tombe_oeuf_wav);
		}
		else
		{
			if(do_oeuf) play_sound_dsb(&oeuf_mange_wav);
			if(do_sable) play_sound_dsb(&sable_wav);
		}
		do_oeuf=false;
		do_sable=false;

		wait_time(0,150);
		stop_sound_dsb();

		freq_boule++;
		if(freq_boule==4)
		{
		    freq_boule=0;
		  	change_boule=!change_boule;
		    if(change_boule) oeuf->change_bitmap(oeuf_bis_Bitmap,oeuf_bis_Width,oeuf_bis_Height);
		    else oeuf->change_bitmap(oeuf_Bitmap,oeuf_Width,oeuf_Height);
	  	}

	  	if(gagne||perdu)
	  	{
	  	    if(gagne)
		  	{
			  	hero->change_bitmap(hero_gagne_Bitmap,hero_gagne_Width,hero_gagne_Height);
	  	    	update_sprite();
				wait_time(0,500);
		  	    play_sound_dsa(&gagne_wav);
				wait_time(1,0);
	   			stop_sound_dsa();
				
		  	    if(no_level==NB_LEVEL)
				{
					you_win();
					exit(0);
				}
	  	   
	  			no_level++;
	  			
	  			if((no_level%2)&&no_level>max_level)
  				{
				  	save_string(OFFSET_IS_SAVE,"boulderdash");
	  				save_8(OFFSET_NO_LEVEL,no_level);
  				}
	  			
	   			mosaic_out(2);
			}
	  	    else if(perdu)
	  	    {
		  	    play_sound_dsa(&perdu_wav);
		  	    u16 hero_x=hero->get_x()-16,hero_y=hero->get_y()-8;
				delete hero;
				hero=new sprite(ROTATION_FLAG,SIZE_DOUBLE,MODE_NORMAL,MOSAIC,COLOR_256,hero_x,hero_y,0,0,0,hero_perdu_Bitmap,hero_perdu_Width,hero_perdu_Height);
				hero->set_pas_zoom(8);
				int i;
				for(int j=0;j<3;j++)
				{
					for(i=0;i<8;i++)
					{
						hero->zoom();
			  	    	update_sprite();
					}
					for(i=0;i<16;i++)
					{
						hero->zoom_inv();
			  	    	update_sprite();
					}
					for(i=0;i<8;i++)
					{
						hero->zoom();
			  	    	update_sprite();
					}
				}
	   			stop_sound_dsa();
	   			
				if(nb_vie)
				{
					try_again();
					fade_out(TARGET1_ALL,1);
				}
				else
				{
					you_lose();
					exit(0);
				}
				nb_vie--;
				text->write_text(1,1,text_status,bg->get_nb_oeuf()-nb_oeuf_left,nb_vie,time_m,time_s);
			}
				
			delete hero;
				
	  		if(no_level==1)
		    {
				next_level(fond,text,bg,master_mike_level_Palette,mike_Level,
								fond_Map,fond_Width,fond_Height,fond_Tiles,fond_Tile,
								vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
								mike_level_Map,mike_level_Width,mike_level_Height,mike_level_Tiles,mike_level_Tile);
				nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_1/100;
				time_m=TIME_1('m');
				time_s=TIME_1('s');
		    }
		    else if(no_level==2)
		    {
				next_level(fond,text,bg,master_mike_level2_Palette,mike_Level2,
								fond2_Map,fond2_Width,fond2_Height,fond2_Tiles,fond2_Tile,
								vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
								mike_level2_Map,mike_level2_Width,mike_level2_Height,mike_level2_Tiles,mike_level2_Tile);
				nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_2/100;
				time_m=TIME_2('m');
				time_s=TIME_2('s');
		    }
		    else if(no_level==3)
		    {
				next_level(fond,text,bg,master_mike_level3_Palette,mike_Level3,
								fond3_Map,fond3_Width,fond3_Height,fond3_Tiles,fond3_Tile,
								vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
								mike_level3_Map,mike_level3_Width,mike_level3_Height,mike_level3_Tiles,mike_level3_Tile);
				nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_3/100;
				time_m=TIME_3('m');
				time_s=TIME_3('s');
		    }
		    else if(no_level==4)
		    {
				next_level(fond,text,bg,master_mike_level4_Palette,mike_Level4,
								fond4_Map,fond4_Width,fond4_Height,fond4_Tiles,fond4_Tile,
								vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
								mike_level4_Map,mike_level4_Width,mike_level4_Height,mike_level4_Tiles,mike_level4_Tile);
				nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_4/100;
				time_m=TIME_4('m');
				time_s=TIME_4('s');
		    }
		    else if(no_level==5)
		    {
				next_level(fond,text,bg,master_mike_level5_Palette,mike_Level5,
								fond5_Map,fond5_Width,fond5_Height,fond5_Tiles,fond5_Tile,
								vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
								mike_level5_Map,mike_level5_Width,mike_level5_Height,mike_level5_Tiles,mike_level5_Tile);
				nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_5/100;
				time_m=TIME_5('m');
				time_s=TIME_5('s');
		    }
		    else if(no_level==6)
		    {
				next_level(fond,text,bg,master_mike_level6_Palette,mike_Level6,
								fond6_Map,fond6_Width,fond6_Height,fond6_Tiles,fond6_Tile,
								vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
								mike_level6_Map,mike_level6_Width,mike_level6_Height,mike_level6_Tiles,mike_level6_Tile);
				nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_6/100;
				time_m=TIME_6('m');
				time_s=TIME_6('s');
		    }
		    else if(no_level==7)
		    {
				next_level(fond,text,bg,master_mike_level7_Palette,mike_Level7,
								fond7_Map,fond7_Width,fond7_Height,fond7_Tiles,fond7_Tile,
								vide_Map,vide_Width,vide_Height,vide_Tiles,vide_Tile,
								mike_level7_Map,mike_level7_Width,mike_level7_Height,mike_level7_Tiles,mike_level7_Tile);
				nb_oeuf_left=bg->get_nb_oeuf()*POURCENT_7/100;
				time_m=TIME_7('m');
				time_s=TIME_7('s');
		    }
oeuf=bg->get_oeuf();
pierre=bg->get_pierre();
		
hero=new sprite(MODE_NORMAL,MOSAIC,COLOR_256,bg->get_hero_x()*16,bg->get_hero_y()*16,0,0,0,0,hero_Bitmap,hero_Width,hero_Height);
hero->set_pas_move(16);

change_boule=0;
freq_boule=0;

text->write_text(1,1,text_status,bg->get_nb_oeuf()-nb_oeuf_left,nb_vie,time_m,time_s);

			bg->update();
	    	update_sprite();
			text->update();
	    	
	  	    if(gagne) mosaic_in(2);
			else if(perdu) raz_fade();
			
			perdu=false;
			gagne=false;
			
			init_time();
	  	}
	  	
	}
	return 0;
}


