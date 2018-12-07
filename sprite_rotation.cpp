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


sprite_rotation::sprite_rotation()
{
    init();
}

sprite_rotation::~sprite_rotation()
{
    init();
}

void sprite_rotation::init()
{
    oam_rot=NULL;
    pas_angle=0;
    pas_zoom_x=pas_zoom_y=0;
    angle=0;
    zoomx=zoomy=INT2FIXED(1);
}

void sprite_rotation::init(u16 pas_a,u16 pas_z_x,u16 pas_z_y,u16 a,FIXED_20 z_x,FIXED_20 z_y)
{
    pas_angle=pas_a;
    pas_zoom_x=pas_z_x;
	pas_zoom_y=pas_z_y;
    angle=a;
    zoomx=z_x;
	zoomy=z_y;
}


void sprite_rotation::update()
{
    oam_rot->corner1=FIXED2INT((zoomx)*FIXED2INT((s32)COS[angle]));
    oam_rot->corner2=FIXED2INT((zoomy)*FIXED2INT((s32)SIN[angle]));
    oam_rot->corner3=FIXED2INT((zoomx)*FIXED2INT((s32)-SIN[angle]));
    oam_rot->corner4=FIXED2INT((zoomy)*FIXED2INT((s32)COS[angle]));
}

//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////

tab_sprite_rotation::tab_sprite_rotation()
{
    init();
}
tab_sprite_rotation::~tab_sprite_rotation()
{
    init();
}

void tab_sprite_rotation::init()
{
    for(int i=0;i<MAX_ROTATION;i++)
    {
        tab[i].init();
        tab[i].oam_rot=&(OAM_buffer_rot[i]);
	}
}

