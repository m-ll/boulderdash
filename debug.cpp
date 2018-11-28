#include "gba.h"
#include "debug.h"

int mike=0;

#include "font/mode4/master_font.pal.h"
#include "font/mode4/normal_8.raw.h"
#include "font/mode4/normal_16.raw.h"

void debug(char * mess,...)
{
	reset_reg();

	set_mode(MODE_4|BG2_ENABLE);
	
	copie_DMA((void*)master_font_Palette,(void*)BG_palette,256/2,DMA_32NOW);
	//pour changer de couleur (par defaut : rouge)
//	palette[1]=RGB(0,31,0);

	for(int xx=0;xx<200;xx++)
		for(int yy=0;yy<150;yy++)
			Mode4_PutPixel(xx, yy, 0x01);

	char s[256];
	va_list ap;
	va_start(ap,mess);
	vsprintf(s,mess,ap);
	va_end(ap);
	
	u8 taille=8,font=0;
	u16 orig_x=10,orig_y=10,interligne=taille;
	u16 x=orig_x,y=2*orig_y;
	for(u32 i=0;i<strlen(s);i++)
	{
	    if(s[i]=='\n')
	    {
			y+=taille+5*interligne;
			x=orig_x;
		}
	    else if(s[i]=='\t')
	    {
			x+=taille*4;
		}
		else
		{
			affiche_caract(s[i],x,y,font,taille);
			x+=taille;
		}
		if(x>=SCREEN_WIDTH-taille)
		{
			x=orig_x;
			y+=taille+interligne;
		}
	}
		
 	while(!key_down(KEY_START)) ;
	wait_time(0,200);
}

void affiche_caract(u8 c,u16 x,u16 y,u8 font,u8 size)
{
	int xx,yy;
	u32 coul=c*(size*size);
	for(xx=y;xx<y+size;xx++)
	{
		for(yy=x;yy<x+size;yy++)
		{
		    if(font==0&&size==8) Mode4_PutPixel(yy, xx, normal_8_Bitmap[coul]);
			else if(font==0&&size==16) Mode4_PutPixel(yy, xx, normal_16_Bitmap[coul]);
			coul++;
		}
	}
	
}

