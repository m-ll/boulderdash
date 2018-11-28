#ifndef _GBA_ALPHA_H_
#define _GBA_ALPHA_H_

#define TARGET1_BG0		0x0001
#define TARGET1_BG1		0x0002
#define TARGET1_BG2		0x0004
#define TARGET1_BG3		0x0008
#define TARGET1_OBJ		0x0010
#define TARGET1_BD		0x0020
#define TARGET1_ALL		TARGET1_BG0|TARGET1_BG1|TARGET1_BG2|TARGET1_BG3|TARGET1_OBJ|TARGET1_BD

#define TARGET2_BG0		0x0100
#define TARGET2_BG1		0x0200
#define TARGET2_BG2		0x0400
#define TARGET2_BG3		0x0800
#define TARGET2_OBJ		0x1000
#define TARGET2_BD		0x2000
#define TARGET2_ALL		TARGET2_BG0|TARGET2_BG1|TARGET2_BG2|TARGET2_BG3|TARGET2_OBJ|TARGET2_BD

#define SFX_NONE		0x0000
#define SFX_ALPHA		0x0040
#define SFX_FADE_IN		0x0080
#define SFX_FADE_OUT	0x00C0

#define BLEND(a,b)		((a)|((b)<<8))

#define set_alpha(a,b)			REG_COLV=BLEND(a,b)
#define set_fade(a)				REG_COLY=a
#define raz_fade()				REG_COLY=0
#define set_target(a,b,c)		REG_BLDMOD=(a)|(b)|(c)

#endif
