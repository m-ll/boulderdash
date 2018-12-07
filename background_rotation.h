///
/// Copyright (c) 2004-19 m-ll. All Rights Reserved.
///
/// Licensed under the MIT License.
/// See LICENSE file in the project root for full license information.
///
/// 2b13c8312f53d4b9202b6c8c0f0e790d10044f9a00d8bab3edf3cd287457c979
/// 29c355784a3921aa290371da87bce9c1617b8584ca6ac6fb17fb37ba4a07d191
///

#ifndef _BACKGROUND_ROTATION_H_
#define _BACKGROUND_ROTATION_H_

#include "background.h"

class background_rotation:public background
{
    private:
    	volatile u32 * REG_BGXX;
    	volatile u32 * REG_BGXY;
    
    	volatile u16 * REG_BGXPA;
    	volatile u16 * REG_BGXPB;
    	volatile u16 * REG_BGXPC;
    	volatile u16 * REG_BGXPD;
    
    	u8 * map;
    	
    	//pour la rotation
    	s16 center_x,center_y;
    	u16 angle;
    	FIXED_8 zoom_x,zoom_y;
//    	u16 pas_angle;
//    	u16 pas_zoom_x,pas_zoom_y;
    	
    public:
    	background_rotation();
	   	background_rotation(u16 no_back,u16 priority,u16 char_block,u16 mosaic,u16 col_pal,u16 screen_block,u16 wrap,u16 size,
						const u8 * m,u16 s_x,u16 s_y,const u8 * t,u16 size_t);  
    	virtual ~background_rotation();
    	
    	void init();
    	
//    	void set_pas_angle(u16);
//    	void set_pas_zoom_x(u16);
//    	void set_pas_zoom_y(u16);
//    	void set_pas_zoom(u16);
    	
    	void rotate(u16 a);
    	void set_center(s16 c_x,s16 c_y);
    	void set_zoom(FIXED_8 z_x,FIXED_8 z_y);
    
    	//permet de changer un tile de la map par un autre
    	void change_tile(u16 x,u16 y,u16 no_t);
    	//permet de changer 4 tiles (2x2 tiles) de la map par 4 autre
    	void change_tile_16(u16 x,u16 y,u16 no0,u16 no1,u16 no2,u16 no3);
    	
    	//copie les données du background dans le sbb
    	void update();
    
    	u16 pixel2size(u16);
    	u16 size2pixel();
    	
    	void down();
    	void right();
    	void up();
    	void left();
    	
};

/*
inline void background_rotation::set_pas_angle(u16 pas)			{pas_angle=pas;}
inline void background_rotation::set_pas_zoom_x(u16 pas)		{pas_zoom_x=pas;}
inline void background_rotation::set_pas_zoom_y(u16 pas)		{pas_zoom_y=pas;}
inline void background_rotation::set_pas_zoom(u16 pas)			{pas_zoom_y=pas_zoom_x=pas;}
*/

#endif
