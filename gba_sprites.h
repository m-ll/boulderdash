#ifndef _SPRITES_H_
#define _SPRITES_H_

//attribute 0
#define ROTATION_FLAG			0x0100
#define SIZE_DOUBLE				0x0200
#define MODE_NORMAL				0x0000
#define MODE_ALPHA				0x0400
#define MODE_WINDOWED			0x0800
#define MOSAIC					0x1000	
#define COLOR_16				0x0000
#define COLOR_256				0x2000
#define SQUARE					0x0000
#define WIDE					0x4000
#define TALL					0x8000

//attribute 1
#define ROTDATA(n)				((n)<<9)
#define ROTDATAINV(n)			((n)>>9)
#define HORIZONTAL_FLIP			0x1000
#define VERTICAL_FLIP			0x2000
#define SIZE_8					0x0000
#define SIZE_16					0x4000
#define SIZE_32					0x8000
#define SIZE_64					0xC000

//attribute 2
#define PRIORITY(n)				((n)<<10)
#define PALETTE(n)				((n)<<12)
#define PRIORITYINV(n)			((n)>>10)
#define PALETTEINV(n)			((n)>>12)

typedef struct// tagOAMEntry
{
    u16 attribute0;
    u16 attribute1;
    u16 attribute2;
    u16 attribute3;
}OAM_entry;

typedef struct// tagRotData
{
    u16 filler1[3];//not use
    u16 corner1;
    u16 filler2[3];//not use
    u16 corner2;
    u16 filler3[3];//not use
    u16 corner3;
    u16 filler4[3];//not use
    u16 corner4;
}rot_data;

#endif
