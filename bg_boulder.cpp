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
#include "bg_boulder.h"

#include "ext_include.h"

bg_boulder::bg_boulder():background_rotation()
{
    init();
}

bg_boulder::bg_boulder(u16 no_back,u16 priority,u16 char_block,u16 mosaic,u16 col_pal,u16 screen_block,u16 wrap,u16 size,
						const u8 * m,u16 s_x,u16 s_y,const u8 * t,u16 size_t):
						background_rotation(no_back,priority,char_block,mosaic,col_pal,screen_block,wrap,size,m,s_x,s_y,t,size_t)
{
    init();
}

bg_boulder::~bg_boulder()
{
    delete [] level;
    delete [] tombe;
    delete oeuf;
    delete pierre;
    init();
    //on met la ligne la seulement quand on est pas dans le constructeur qui herite avec ':'
    background_rotation::init();
}

void bg_boulder::init()
{
	level=NULL;
	tombe=NULL;
	oeuf=NULL;
	pierre=NULL;
}

	    
void bg_boulder::set_level(const u8 * l)
{
	level=new u8 [MAP2LEVEL(map_size_x)*MAP2LEVEL(map_size_y)];
	for(int i=0;i<MAP2LEVEL(map_size_x)*MAP2LEVEL(map_size_y);i++)
		level[i]=l[i];
		
	tombe=new u8 [MAP2LEVEL(map_size_x)*MAP2LEVEL(map_size_y)];
	for(int i=0;i<MAP2LEVEL(map_size_x)*MAP2LEVEL(map_size_y);i++)
		tombe[i]=0;
		
	oeuf=new tab_sprite;
	pierre=new tab_sprite;
	
	u16 tile_transparent=0;
	for(int y=0;y<MAP2LEVEL(map_size_y);y++)
	{
		for(int x=0;x<MAP2LEVEL(map_size_x);x++)
		{
		    if(level[y*MAP2LEVEL(map_size_x)+x]=='m')
	    	    change_tile_16(x,y,1,2,15,16);
		    else if(level[y*MAP2LEVEL(map_size_x)+x]=='p')
		    {
		        sprite * s=new sprite(MODE_ALPHA,MOSAIC,COLOR_256,x*2*8,y*2*8,0,0,1,0,pierre_Bitmap,pierre_Width,pierre_Height);
		        s->set_pas_move(16);
		        pierre->add_sprite(s);
	    	    change_tile_16(x,y,tile_transparent,tile_transparent,tile_transparent,tile_transparent);
      		}
		    else if(level[y*MAP2LEVEL(map_size_x)+x]=='o')
		    {
		        sprite * s=new sprite(MODE_NORMAL,MOSAIC,COLOR_256,x*2*8,y*2*8,0,0,1,0,oeuf_Bitmap,oeuf_Width,oeuf_Height);
		        s->set_pas_move(16);
		        oeuf->add_sprite(s);
	    	    change_tile_16(x,y,tile_transparent,tile_transparent,tile_transparent,tile_transparent);
  			}
		    else if(level[y*MAP2LEVEL(map_size_x)+x]=='v')
				change_tile_16(x,y,tile_transparent,tile_transparent,tile_transparent,tile_transparent);
		    else if(level[y*MAP2LEVEL(map_size_x)+x]=='x')
		    {
				change_tile_16(x,y,tile_transparent,tile_transparent,tile_transparent,tile_transparent);
  			}
 		}
  	}
}


void bg_boulder::set_level(u16 x,u16 y,u8 c)
{
#ifdef _DEBUG_
    if(x>=MAP2LEVEL(map_size_x)) debug("%s : %d\n\tx %d",x);
	if(y>=MAP2LEVEL(map_size_y)) debug("%s : %d\n\ty %d",y);
	if(c!='v'&&c!='m'&&c!='p'&&c!='o'&&c!=' '&&c!='x') debug("%s : %d\n\tc %c",c);
#endif
#ifdef _COND_
    if(x>=MAP2LEVEL(map_size_x)||y>=MAP2LEVEL(map_size_y)||(c!='v'&&c!='m'&&c!='p'&&c!='o'&&c!=' '&&c!='x')) return;
#endif

    level[y*MAP2LEVEL(map_size_x)+x]=c;
}
    	

u8 bg_boulder::get_level(u16 x,u16 y)
{
#ifdef _DEBUG_
    if(x>=MAP2LEVEL(map_size_x)) debug("%s : %d\n\tx %d",x);
	if(y>=MAP2LEVEL(map_size_y)) debug("%s : %d\n\ty %d",y);
#endif
#ifdef _COND_
    if(x>=MAP2LEVEL(map_size_x)||y>=MAP2LEVEL(map_size_y)) return 0x00;
#endif

	return level[y*MAP2LEVEL(map_size_x)+x];

}


u16 bg_boulder::get_hero_x()
{
	for(int y=0;y<MAP2LEVEL(map_size_y);y++)
		for(int x=0;x<MAP2LEVEL(map_size_x);x++)
			if(level[y*MAP2LEVEL(map_size_x)+x]=='x') return x;
	return 0;
}

u16 bg_boulder::get_hero_y()
{
	for(int y=0;y<MAP2LEVEL(map_size_y);y++)
		for(int x=0;x<MAP2LEVEL(map_size_x);x++)
			if(level[y*MAP2LEVEL(map_size_x)+x]=='x') return y;
	return 0;
}


u8 bg_boulder::tomber()
{
    //on fait un premier passage pour savoir si le heros risque de se faire ecraser
/*    for(int x=1;x<MAP2LEVEL(map_size_x)-1;x++)
    	for(int y=0;y<MAP2LEVEL(map_size_y)-1;y++)
    	{
    	    u8 c=level[y*MAP2LEVEL(map_size_x)+x];
    	    u8 c1=level[(y+1)*MAP2LEVEL(map_size_x)+x];
		    //on regarde si on a une pierre ou un oeuf, avec en dessous un vide (la pierre tombera),
		    //dans ce cas la on met a 1, ca veut dire que la pierre tombe
    	    if((c=='o'||c=='p')&&c1=='v')
   	    	{
   	    	    tombe[y*MAP2LEVEL(map_size_x)+x]=0;
   	    	    tombe[(y+1)*MAP2LEVEL(map_size_x)+x]=1;
	    	}
	    	else if((c=='o'||c=='p')&&level[y*MAP2LEVEL(map_size_x)+x-1]=='v'&&
					level[(y+1)*MAP2LEVEL(map_size_x)+x-1]=='v'&&
					(c1=='o'||c1=='p'))
   	    	{
   	    	    tombe[y*MAP2LEVEL(map_size_x)+x]=0;
   	    	    tombe[(y+1)*MAP2LEVEL(map_size_x)+x-1]=1;
	    	}
	    	else if((c=='o'||c=='p')&&level[y*MAP2LEVEL(map_size_x)+x+1]=='v'&&
					level[(y+1)*MAP2LEVEL(map_size_x)+x+1]=='v'&&
					(c1=='o'||c1=='p'))
   	    	{
   	    	    tombe[y*MAP2LEVEL(map_size_x)+x]=0;
   	    	    tombe[(y+1)*MAP2LEVEL(map_size_x)+x+1]=1;
	    	}
 		}
*/	
	u8 play_snd=0x00;
	
	//on stocke le level courrant
    u8 * next=new u8 [MAP2LEVEL(map_size_x)*MAP2LEVEL(map_size_y)];
    copie_DMA((void *)level,(void *)next,MAP2LEVEL(map_size_x)*MAP2LEVEL(map_size_y)/4,DMA_32NOW);
    
    //on fait tomber la pierre ou l'oeuf
    for(int x=1;x<MAP2LEVEL(map_size_x)-1;x++)
    	for(int y=0;y<MAP2LEVEL(map_size_y)-1;y++)
    	{
    	    u8 c=level[y*MAP2LEVEL(map_size_x)+x];
    	    u8 c1=level[(y+1)*MAP2LEVEL(map_size_x)+x];
    	    
 //---------------------------------------------------------------------------------------
    	    if((c=='o'||c=='p')&&c1=='v')
   	    	{
   	    	    tombe[y*MAP2LEVEL(map_size_x)+x]=0;
   	    	    tombe[(y+1)*MAP2LEVEL(map_size_x)+x]=1;
	    	}
	    	else if((c=='o'||c=='p')&&level[y*MAP2LEVEL(map_size_x)+x-1]=='v'&&
					level[(y+1)*MAP2LEVEL(map_size_x)+x-1]=='v'&&
					(c1=='o'||c1=='p'))
   	    	{
   	    	    tombe[y*MAP2LEVEL(map_size_x)+x]=0;
   	    	    tombe[(y+1)*MAP2LEVEL(map_size_x)+x-1]=1;
	    	}
	    	else if((c=='o'||c=='p')&&level[y*MAP2LEVEL(map_size_x)+x+1]=='v'&&
					level[(y+1)*MAP2LEVEL(map_size_x)+x+1]=='v'&&
					(c1=='o'||c1=='p'))
   	    	{
   	    	    tombe[y*MAP2LEVEL(map_size_x)+x]=0;
   	    	    tombe[(y+1)*MAP2LEVEL(map_size_x)+x+1]=1;
	    	}
 //---------------------------------------------------------------------------------------
    	    
    	    //pour accelerer
	    	u8 trouve=0;
    	    if((c=='o'||c=='p')&&c1=='v')
   	    	{
	    	    sprite * s;
	    	    trouve=0;
	   	        for(int i=0;i<oeuf->get_nb();i++)
	   	        {
	   	            s=oeuf->get_sprite(i);
	   	        	if(s->get_map_x()==x&&s->get_map_y()==y)
		   			{
		        		s->down();
						s->add_map_y(1);
						//on modifie que si on a trouvé un sprite,
						//on peut appeler la fonction avec tab_oeuf et on est sur pierre
		   	    	    next[y*MAP2LEVEL(map_size_x)+x]='v';
		   	    	    next[(y+1)*MAP2LEVEL(map_size_x)+x]=c;
		   	    	    trouve=1;
		   	    	    
		   				break;
 					}
				}
				if(!trouve)
		   	        for(int i=0;i<pierre->get_nb();i++)
		   	        {
		   	            s=pierre->get_sprite(i);
		   	        	if(s->get_map_x()==x&&s->get_map_y()==y)
			   			{
			        		s->down();
							s->add_map_y(1);
							//on modifie que si on a trouvé un sprite,
							//on peut appeler la fonction avec tab_oeuf et on est sur pierre
			   	    	    next[y*MAP2LEVEL(map_size_x)+x]='v';
			   	    	    next[(y+1)*MAP2LEVEL(map_size_x)+x]=c;
			   	    	    
			   				break;
	 					}
					}
    	    }
    	    //le next, c'est surement pour voir quand 2 items tombent en meme temps dans le meme trou
    	    else if((c=='o'||c=='p')&&level[y*MAP2LEVEL(map_size_x)+x-1]=='v'&&
					level[(y+1)*MAP2LEVEL(map_size_x)+x-1]=='v'&&next[(y+1)*MAP2LEVEL(map_size_x)+x-1]=='v'&&
					(c1=='o'||c1=='p'))
   	    	{
	    	    sprite * s;
	    	    trouve=0;
	   	        for(int i=0;i<oeuf->get_nb();i++)
	   	        {
	   	            s=oeuf->get_sprite(i);
	   	        	if(s->get_map_x()==x&&s->get_map_y()==y)
		   			{
		        		s->left();
		        		s->down();
						s->add_map_x(-1);
						s->add_map_y(1);
						//on modifie que si on a trouvé un sprite,
						//on peut appeler la fonction avec tab_oeuf et on est sur pierre
		   	    	    next[y*MAP2LEVEL(map_size_x)+x]='v';
		   	    	    next[(y+1)*MAP2LEVEL(map_size_x)+x-1]=c;
		   	    	    trouve=1;
		   	    	    
		   				break;
 					}
				}
				if(!trouve)
		   	        for(int i=0;i<pierre->get_nb();i++)
		   	        {
		   	            s=pierre->get_sprite(i);
		   	        	if(s->get_map_x()==x&&s->get_map_y()==y)
			   			{
			        		s->left();
			        		s->down();
							s->add_map_x(-1);
							s->add_map_y(1);
							//on modifie que si on a trouvé un sprite,
							//on peut appeler la fonction avec tab_oeuf et on est sur pierre
			   	    	    next[y*MAP2LEVEL(map_size_x)+x]='v';
			   	    	    next[(y+1)*MAP2LEVEL(map_size_x)+x-1]=c;
			   	    	    
			   				break;
	 					}
					}
    	    }
    	    else if((c=='o'||c=='p')&&level[y*MAP2LEVEL(map_size_x)+x+1]=='v'&&
					level[(y+1)*MAP2LEVEL(map_size_x)+x+1]=='v'&&next[(y+1)*MAP2LEVEL(map_size_x)+x+1]=='v'&&
					(c1=='o'||c1=='p'))
   	    	{
	    	    sprite * s;
	    	    trouve=0;
	   	        for(int i=0;i<oeuf->get_nb();i++)
	   	        {
	   	            s=oeuf->get_sprite(i);
	   	        	if(s->get_map_x()==x&&s->get_map_y()==y)
		   			{
		        		s->right();
		        		s->down();
						s->add_map_x(1);
						s->add_map_y(1);
						//on modifie que si on a trouvé un sprite,
						//on peut appeler la fonction avec tab_oeuf et on est sur pierre
		   	    	    next[y*MAP2LEVEL(map_size_x)+x]='v';
		   	    	    next[(y+1)*MAP2LEVEL(map_size_x)+x+1]=c;
		   	    	    trouve=1;
		   	    	    
		   				break;
 					}
				}
				if(!trouve)
		   	        for(int i=0;i<pierre->get_nb();i++)
		   	        {
		   	            s=pierre->get_sprite(i);
		   	        	if(s->get_map_x()==x&&s->get_map_y()==y)
			   			{
			        		s->right();
			        		s->down();
							s->add_map_x(1);
							s->add_map_y(1);
							//on modifie que si on a trouvé un sprite,
							//on peut appeler la fonction avec tab_oeuf et on est sur pierre
			   	    	    next[y*MAP2LEVEL(map_size_x)+x]='v';
			   	    	    next[(y+1)*MAP2LEVEL(map_size_x)+x+1]=c;
			   	    	    
			   				break;
	 					}
					}
    	    }
    	    //si on a une pierre ou un oeuf au dessus du hero et que la pierre et en train de tomber
    	    //le hero est ecrasé
    	    if((c=='o'||c=='p')&&c1=='x'&&tombe[y*MAP2LEVEL(map_size_x)+x])
   	    	{
   	    	    sprite * s;
	   	        for(int i=0;i<oeuf->get_nb();i++)
	   	        {
	   	            s=oeuf->get_sprite(i);
	   	        	if(s->get_map_x()==x&&s->get_map_y()==y)
		   			{
		        		s->down();
						s->add_map_y(1);
						//on modifie que si on a trouvé un sprite,
						//on peut appeler la fonction avec tab_oeuf et on est sur pierre
		   	    	    next[y*MAP2LEVEL(map_size_x)+x]='v';
		   	    	    next[(y+1)*MAP2LEVEL(map_size_x)+x]=c;
		   	    	    
						delete [] next;
						next=NULL;
						
		   			    return ECRASE_HERO;
 			    	}
 				}
	   	        for(int i=0;i<pierre->get_nb();i++)
	   	        {
	   	            s=pierre->get_sprite(i);
	   	        	if(s->get_map_x()==x&&s->get_map_y()==y)
		   			{
		        		s->down();
						s->add_map_y(1);
						//on modifie que si on a trouvé un sprite,
						//on peut appeler la fonction avec tab_oeuf et on est sur pierre
		   	    	    next[y*MAP2LEVEL(map_size_x)+x]='v';
		   	    	    next[(y+1)*MAP2LEVEL(map_size_x)+x]=c;
			   	    	    
						delete [] next;
						next=NULL;
						
		   			    return ECRASE_HERO;
 			    	}
    			}
    		}
		
 //---------------------------------------------------------------------------------------
		    //on met a 0 toutes les pierres ou oeufs qui etait en train
		    //de tomber mais qui ne peuvent plus
    	    if((c=='o'||c=='p')&&level[y*MAP2LEVEL(map_size_x)+x]==next[y*MAP2LEVEL(map_size_x)+x])
    	    {
//quand un oeuf tombe ca fait pas de bruit
    	        if(tombe[y*MAP2LEVEL(map_size_x)+x]&&c=='p') play_snd|=PLAY_SOUND_PIERRE;
//    	        if(tombe[y*MAP2LEVEL(map_size_x)+x]&&c=='o') play_snd|=PLAY_SOUND_OEUF;
	    		tombe[y*MAP2LEVEL(map_size_x)+x]=0;
 			}
 //---------------------------------------------------------------------------------------
	    }
 
/*    for(int x=0;x<MAP2LEVEL(map_size_x);x++)
    	for(int y=0;y<MAP2LEVEL(map_size_y);y++)
    	{
    	    if((level[y*MAP2LEVEL(map_size_x)+x]=='o'||level[y*MAP2LEVEL(map_size_x)+x]=='p')&&
				level[y*MAP2LEVEL(map_size_x)+x]==next[y*MAP2LEVEL(map_size_x)+x])
	    		tombe[y*MAP2LEVEL(map_size_x)+x]=0;
		}
*/

	//on met a jour le level
    copie_DMA((void *)next,(void *)level,MAP2LEVEL(map_size_x)*MAP2LEVEL(map_size_y)/4,DMA_32NOW);
	delete [] next;
	next=NULL;
	
//	return 0;
	return play_snd;
	
}



