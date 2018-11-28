#ifndef _GBA_VIDEO_H_
#define _GBA_VIDEO_H_

#define SCREEN_WIDTH		240
#define SCREEN_HEIGHT		160

#define MODE_0				0x0
#define MODE_1				0x1
#define MODE_2				0x2
#define MODE_3				0x3
#define MODE_4				0x4
#define MODE_5				0x5

#define BACKBUFFER			0x10
#define H_BLANK_OAM			0x20

#define OBJ_MAP_2D			0x00
#define OBJ_MAP_1D			0x40

#define FORCE_BLANK			0x80

#define BG0_ENABLE			0x100
#define BG1_ENABLE			0x200
#define BG2_ENABLE			0x400
#define BG3_ENABLE			0x800
#define OBJ_ENABLE			0x1000


#define WIN1_ENABLE		0x2000 
#define WIN2_ENABLE		0x4000
#define WINOBJ_ENABLE	0x8000


#define set_mode(mode)			REG_DISPCNT=(mode)
#define add_mode(mode)			REG_DISPCNT|=(mode)
#define rem_mode(mode)			REG_DISPCNT&=~(mode)
#define get_mode()				(REG_DISPCNT)
#define is_mode0()				(REG_DISPCNT&MODE_0)
#define is_mode1()				(REG_DISPCNT&MODE_1)
#define is_mode2()				(REG_DISPCNT&MODE_2)
#define is_mode3()				(REG_DISPCNT&MODE_3)
#define is_mode4()				(REG_DISPCNT&MODE_4)
#define is_mode5()				(REG_DISPCNT&MODE_5)

#endif
