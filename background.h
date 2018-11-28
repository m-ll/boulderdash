#ifndef _BACKGROUND_H_
#define _BACKGROUND_H_

#define ECRAN_TILE_X		30
#define ECRAN_TILE_Y		20

#define MAX(x,y)		(((x)>(y))?(x):(y))
#define MIN(x,y)		(((x)<(y))?(x):(y))

class background
{
    protected:
    	volatile u16 * REG_BGXCNT;
    	
    	u16 no_bg;
    	
    	u16 * cbb;
    	u16 * sbb;
    	
    	//la taille totale de la map
    	u16 map_size_x,map_size_y;
    	//les tiles
    	u8 * tile;
    	u16 tile_size;
    	
    	//le nombre de tiles (on le connait seulement dans text ou rotation)
    	u16 nb_tile_x,nb_tile_y;
    	
	    //se deplacer dans la portion de carte en memoire,
		//puisque la carte stockée fait plus que l'ecran de la GBA
		u16 max_pas_screen;
		u16 pas_screen;
		s32 screen_xoff, screen_yoff;
		// se deplacer dans la map du nombre de tile
		u16 max_pas_map;
		u16 pas_map;
		s32 map_hoff, map_voff;
    public:
    	background();
    	virtual ~background();
    	
    	void init();
    	
    	//permet d'ajouter un tile de couleur uni, on donne l'index de la couleur dans la palette
    	//si 0 alors transparence
    	void add_tile(u8 no_col_pal);
    	//permet d'ajouter un tile que l'on veut, le tableau contient ses index des couleurs dans la palette
    	void add_tile(u8 t[64]);
    	
    	//taille totale de la map en tile
    	u16 get_map_size_x();
    	u16 get_map_size_y();
    	
    	//deplace la partie de map(quand c'est nécessaire) et le cadre ecran
    	void left();
    	void right();
    	void up();
    	void down();
    	
    	//set et get sur les attibuts
    	void set_priority(u16);
    	void set_cbb(u16);
    	void set_mosaic_flag(u16);
    	void set_col_pal_flag(u16);
    	void set_sbb(u16);
    	void set_wraparound_flag(u16);
    	void set_size_flag(u16);
    	
    	u16 get_priority();
    	u16 get_cbb();
    	u16 get_mosaic_flag();
    	u16 get_col_pal_flag();
    	u16 get_sbb();
    	u16 get_wraparound_flag();
    	u16 get_size_flag();
    	
    	//set et get sur les données membres
    	void set_pas_screen(u16);
    	void set_screen_xoff(s32);
    	void set_screen_yoff(s32);
    	void set_pas_map(u16);
    	void set_map_hoff(s32);
    	void set_map_voff(s32);
    	
    	u16 get_pas_screen();
    	s32 get_screen_xoff();
    	s32 get_screen_yoff();
    	u16 get_pas_map();
    	s32 get_map_hoff();
    	s32 get_map_voff();
};


inline void background::set_priority(u16 p)						{*REG_BGXCNT=(*REG_BGXCNT&0xFFFC)|p;}
inline void background::set_cbb(u16 c)							{*REG_BGXCNT=(*REG_BGXCNT&0xFFF3)|(c<<CHAR_SHIFT);}
inline void background::set_mosaic_flag(u16 m)					{*REG_BGXCNT=(*REG_BGXCNT&0xFFBF)|m;}
inline void background::set_col_pal_flag(u16 c)					{*REG_BGXCNT=(*REG_BGXCNT&0xFF7F)|c;}
inline void background::set_sbb(u16 s)							{*REG_BGXCNT=(*REG_BGXCNT&0xE0FF)|(s<<SCREEN_SHIFT);}
inline void background::set_wraparound_flag(u16 w)				{*REG_BGXCNT=(*REG_BGXCNT&0xDFFF)|w;}
inline void background::set_size_flag(u16 s)					{*REG_BGXCNT=(*REG_BGXCNT&0x3FFF)|s;}

inline u16 background::get_priority()							{return *REG_BGXCNT&0x0003;}
inline u16 background::get_cbb()								{return (*REG_BGXCNT&0x000C)>>CHAR_SHIFT;}
inline u16 background::get_mosaic_flag()						{return *REG_BGXCNT&0x0040;}
inline u16 background::get_col_pal_flag()						{return *REG_BGXCNT&0x0080;}
inline u16 background::get_sbb()								{return (*REG_BGXCNT&0x1F00)>>SCREEN_SHIFT;}
inline u16 background::get_wraparound_flag()					{return *REG_BGXCNT&0x2000;}
inline u16 background::get_size_flag()							{return *REG_BGXCNT&0xC000;}


//inline void background::set_pas_screen(u16 pas)					{(pas<max_pas_screen)?pas_screen=pas:pas_screen=max_pas_screen;}
inline void background::set_screen_xoff(s32 x)					{screen_xoff=x;}
inline void background::set_screen_yoff(s32 y)					{screen_yoff=y;}
//inline void background::set_pas_map(u16 pas)					{(pas<max_pas_map)?pas_map=pas:pas_map=max_pas_map;}
inline void background::set_map_hoff(s32 h)						{map_hoff=h;}
inline void background::set_map_voff(s32 v)						{map_voff=v;}

inline u16 background::get_pas_screen()							{return pas_screen;}
inline s32 background::get_screen_xoff()						{return screen_xoff;}
inline s32 background::get_screen_yoff()						{return screen_yoff;}
inline u16 background::get_pas_map()							{return pas_map;}
inline s32 background::get_map_hoff()							{return map_hoff;}
inline s32 background::get_map_voff()							{return map_voff;}


inline u16 background::get_map_size_x()							{return map_size_x;}
inline u16 background::get_map_size_y()							{return map_size_y;}


#endif
