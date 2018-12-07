///
/// Copyright (c) 2004-19 m-ll. All Rights Reserved.
///
/// Licensed under the MIT License.
/// See LICENSE file in the project root for full license information.
///
/// 2b13c8312f53d4b9202b6c8c0f0e790d10044f9a00d8bab3edf3cd287457c979
/// 29c355784a3921aa290371da87bce9c1617b8584ca6ac6fb17fb37ba4a07d191
///

#ifndef INTERUPT_H
#define INTERUPT_H


#define IN_EWRAM __attribute__ ((section (".ewram")))
#define IN_IWRAM __attribute__ ((section (".iwram")))


typedef void (*fp)(void);


void enable_interrupt(u16);
void disable_interrupt(u16);


#define INT_VBLANK    	    0x0001
#define INT_HBLANK		    0x0002	
#define INT_VCOUNT		    0x0004	
#define INT_TIMER0		    0x0008
#define INT_TIMER1		    0x0010
#define INT_TIMER2		    0x0020	
#define INT_TIMER3		    0x0040
#define INT_COMUNICATION	0x0080
#define INT_DMA0		    0x0100
#define INT_DMA1		    0x0200
#define INT_DMA2		    0x0400
#define INT_DMA3		    0x0800
#define INT_KEYBOARD		0x1000
#define INT_CART		    0x2000
#define INT_ALL			    0x4000

void VBLANK(void);
void HBLANK(void) ;
void DMA0(void) ;
void DMA1(void) ;
void DMA2(void) ;
void DMA3(void) ;
void VCOUNT(void) ;
void TIMER0(void) ;
void TIMER1(void) ;
void TIMER2(void) ;
void TIMER3(void) ;
void KEYBOARD(void) ;
void CART(void) ;
void COMUNICATION(void) ;


#endif
