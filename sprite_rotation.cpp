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

