///
/// Copyright (c) 2004-19 m-ll. All Rights Reserved.
///
/// Licensed under the MIT License.
/// See LICENSE file in the project root for full license information.
///
/// 2b13c8312f53d4b9202b6c8c0f0e790d10044f9a00d8bab3edf3cd287457c979
/// 29c355784a3921aa290371da87bce9c1617b8584ca6ac6fb17fb37ba4a07d191
///

#ifndef _BG_BOULDER_H_
#define _BG_BOULDER_H_

#include "background_rotation.h"
#include "sprite.h"

#define MAP2LEVEL(n)		(n/2)

#define ECRASE_HERO			0x01
#define PLAY_SOUND_PIERRE	0x02
#define PLAY_SOUND_OEUF		0x04

class bg_boulder:public background_rotation
{
    private:
    	u8 * level;
    	u8 * tombe;
    	
		tab_sprite * pierre;
		tab_sprite * oeuf;

    public:
    	bg_boulder();
    	bg_boulder(u16 no_back,u16 priority,u16 char_block,u16 mosaic,u16 col_pal,u16 screen_block,u16 wrap,u16 size,
						const u8 * m,u16 s_x,u16 s_y,const u8 * t,u16 size_t);
    	~bg_boulder();
    	
    	void init();
    	
    	void change_tile_16(u16 x,u16 y,u16 no0,u16 no1,u16 no2,u16 no3);
    	
    	u8 get_level(u16 x,u16 y);
    	void set_level(u16 x,u16 y,u8 c);
    	void set_level(const u8 * l);
    	
    	u16 get_nb_pierre();
    	u16 get_nb_oeuf();
    	
    	tab_sprite * get_pierre();
    	tab_sprite * get_oeuf();
    	
    	u16 get_hero_x();
    	u16 get_hero_y();
    	
    	u8 tomber();
};

inline void bg_boulder::change_tile_16(u16 x,u16 y,u16 no0,u16 no1,u16 no2,u16 no3)
											{background_rotation::change_tile_16(x*2,y*2,no0,no1,no2,no3);}


inline u16 bg_boulder::get_nb_pierre()									{return pierre->get_nb();}
inline u16 bg_boulder::get_nb_oeuf()									{return oeuf->get_nb();}

inline tab_sprite * bg_boulder::get_pierre()							{return pierre;}
inline tab_sprite * bg_boulder::get_oeuf()								{return oeuf;}

#endif
