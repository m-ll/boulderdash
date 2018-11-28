#ifndef _GBA_BG_
#define _GBA_BG_

#define BG_MOSAIC_ENABLE		0x40
#define BG_COLOR_256			0x80
#define BG_COLOR_16				0x0

#define char_base_block(n)		(((n)*0x4000)+0x6000000)
#define screen_base_block(n)	(((n)*0x800)+0x6000000)

#define CHAR_SHIFT				2
#define SCREEN_SHIFT			8
#define TEXT_BG_SIZE_256x256	0x0
#define TEXT_BG_SIZE_256x512	0x8000	
#define TEXT_BG_SIZE_512x256	0x4000
#define TEXT_BG_SIZE_512x512	0xC000

#define ROT_BG_SIZE_128x128		0x0
#define ROT_BG_SIZE_256x256		0x4000
#define ROT_BG_SIZE_512x512		0x8000
#define ROT_BG_SIZE_1024x1024	0xC000

#define WRAPAROUND				0x2000

#endif
