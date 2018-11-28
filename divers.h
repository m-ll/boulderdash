#ifndef _DIVERS_H_
#define _DIVERS_H_

#include "background_text.h"
#include "bg_boulder.h"

#define OFFSET_IS_SAVE		0		//"boulderdash"
#define OFFSET_NO_LEVEL		12

//il doit rester x% des oeufs pour passer au niveau sup
#define POURCENT_1	5
#define POURCENT_2	25
#define POURCENT_3	10
#define POURCENT_4	5
#define POURCENT_5	15
#define POURCENT_6	20
#define POURCENT_7	10
//le temps
#define TIME_1(t)	(t=='m')?3:00
#define TIME_2(t)	(t=='m')?7:00
#define TIME_3(t)	(t=='m')?2:30
#define TIME_4(t)	(t=='m')?3:00
#define TIME_5(t)	(t=='m')?2:30
#define TIME_6(t)	(t=='m')?3:00
#define TIME_7(t)	(t=='m')?2:30
//il y a 3 level
#define NB_LEVEL	7
//nombre de vie
#define NB_VIE		5
	
//========================================================================================

void next_level(background_text * &,background_text * &,bg_boulder * &,const u16 *,const u8 *,
					const u16 *,u16,u16,const u8 *,u16,
					const u16 *,u16,u16,const u8 *,u16,
					const u8 *,u16,u16,const u8 *,u16);
					
//========================================================================================

void presentation();
void you_win();
void try_again();
void you_lose();
void credit();

//========================================================================================

void init_time();
bool change_time();
    
//========================================================================================

void play_sound_dsa(const SAMPLE *);
void stop_sound_dsa();
void play_sound_dsb(const SAMPLE *);
void stop_sound_dsb();

void stop_sound();

#endif
