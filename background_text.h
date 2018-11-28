#ifndef _BACKGROUND_TEXT_H_
#define _BACKGROUND_TEXT_H_

#include "background.h"

class background_text:public background
{
    private:
    	volatile u16 * REG_BGXHOFS;
    	volatile u16 * REG_BGXVOFS;
    
    	u16 * map;
    	
    public:
    	background_text();
    	background_text(u16 no_back,u16 priority,u16 char_block,u16 mosaic,u16 col_pal,u16 screen_block,u16 size,
						const u16 * m,u16 s_x,u16 s_y,const u8 * t,u16 size);
    	virtual ~background_text();
    	
    	void init();
    	
    	//permet de changer un tile de la map par un autre
    	void change_tile(u16 x,u16 y,u16 no_t,u16 no_rot=0);
    	
    	//copie les donn�es du background dans le sbb
    	void update();
    	
    	u16 pixel2size(u16,u16);
    	u16 size2pixel(u8);
    	
    	//la partie TEXTE
   	private:
   		u16 style;
   		u16 taille;
   		u16 color;
   	public:
    	void init_text(u16,u8,u16);
    	void write_text(u16,u16,char *,...);
};



#endif
