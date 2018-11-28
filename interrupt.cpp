#include "gba.h"
#include "interrupt.h"


//here is a function to enable interupts.  If it is VBLANK or HBLANK it sets REG_DISPSTAT to the apropriate values
//all others you will have to do on your own.

void enable_interrupt(u16 inter)
{
	REG_IME = 0;  //probably not necessary but not a good idea to change interupt registers when an interupt is ocuring
/*
	if(inter | INT_VBLANK)
		REG_DISPSTAT |= 0x8;

	if(inter | INT_HBLANK)
		REG_DISPSTAT |= 0x10;
*/	
	REG_IE |= inter;

	REG_IME = 1;

}

void disable_interrupt(u16 inter)
{
	REG_IE &= ~inter;

	if(inter == INT_ALL) //this is were that ALL comes in
		REG_IME = 0;  //disable all interupts;
}


//here is our table of functions.  Once interupts are enabled in crt0.s you will not be able to link your code if this table is not pressent.
//the interupts must be listed in that order.

fp IntrTable[]  = 
{
	VBLANK,
	HBLANK,
	VCOUNT,
	TIMER0,
	TIMER1,
	TIMER2,
	TIMER3,
	COMUNICATION,
	DMA0,
	DMA1,
	DMA2,
	DMA3,
	KEYBOARD,
	CART
};



//all our interupt functions empty for now.

void VBLANK()
{
	REG_IF |= INT_VBLANK;
}
void HBLANK(void)
{
	REG_IF |= INT_HBLANK;
}
void DMA0(void)
{
	REG_IF |= INT_DMA0;
}
void DMA1(void)
{
	REG_IF |= INT_DMA1;
}
void DMA2(void)
{
	REG_IF |= INT_DMA2;
}
void DMA3(void)
{
	REG_IF |= INT_DMA3;
}
void VCOUNT(void)
{
	REG_IF |= INT_VCOUNT;
}

extern u16 nb_sample_dsa;
extern SAMPLE * current_sample_dsa;
extern void stop_sound_dsa();
void TIMER0(void)
{	
	if(nb_sample_dsa>=current_sample_dsa->length)
	{
		stop_sound_dsa();
 	}
 	else nb_sample_dsa++;
  	
	REG_IF |= INT_TIMER0;
}
extern u16 nb_sample_dsb;
extern SAMPLE * current_sample_dsb;
extern void stop_sound_dsb();
void TIMER1(void)
{
	if(nb_sample_dsb>=current_sample_dsb->length)
	{
		stop_sound_dsb();
 	}
 	else nb_sample_dsb++;
  	
	REG_IF |= INT_TIMER1;
}

void TIMER2(void)
{
	REG_IF |= INT_TIMER2;
}
void TIMER3(void)
{
	REG_IF |= INT_TIMER3;
}
void KEYBOARD(void)
{
	REG_IF |= INT_TIMER3;
}
void CART(void)
{
	REG_IF |= INT_CART;
}
void COMUNICATION(void)
{
	REG_IF |= INT_COMUNICATION;
}



