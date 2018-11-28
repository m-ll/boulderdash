#ifndef _GBA_TYPES_H_
#define _GBA_TYPES_H_

typedef unsigned char 				u8;
typedef unsigned short 				u16;
typedef unsigned long 				u32;

typedef signed char 				s8;
typedef signed short 				s16;
typedef signed long 				s32;

typedef unsigned char 				byte;
typedef unsigned short 				hword;
typedef unsigned long 				word;

typedef volatile unsigned  char 	vu8;
typedef volatile unsigned  short	vu16;
typedef volatile unsigned  long 	vu32;

typedef volatile signed char 		vs8;
typedef volatile signed short 		vs16;
typedef volatile signed long 		vs32;


#define IN_EWRAM __attribute__ ((section (".ewram")))
#define IN_IWRAM __attribute__ ((section (".iwram")))


#define INT2FIXED(n)	(n<<8)
#define FIXED2INT(n)	(n>>8)

//8 bits partie entiere, 8 bits partie decimale
typedef s16		FIXED_8;
//20 bits partie entiere, 8 bits partie decimale
typedef s32		FIXED_20;

//le resultat est un fixed
//operations		2 FIXED					INT & FIXED
//	+				F1+F2					(INT<<8)+F
//	-				F1-F2					(INT<<8)-F
//	*				(F1*F2)>>8				INT*F
//	/				(F1<<8)/F2				(INT<<16)/F		ou		F/INT


#define RGB(r,g,b)			((u16)(r|(g<<5)|(b<<10)))

#endif
