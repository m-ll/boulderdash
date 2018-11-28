#ifndef _SPRITE_H_
#define _SPRITE_H_

#define MAX_SPRITE_OAM		128
//c'est le nombre de sprites que l'on peut stocker dans le tableau de tous les sprites : 1024
#define MAX_SPRITE			(MAX_SPRITE_OAM*8)
#define MAX_ROTATION		(MAX_SPRITE/4)
#define MAX_SPRITE_BITMAP	1024

#define OUT_SCREEN			250

void init_sprite();
void delete_sprite();
void update_sprite();

void init_OAM();
void copy_OAM();

class sprite_bitmap
{
    public:
    	u8 * bitmap;
    	u16 size_x,size_y;
    	u16 ad_deb;
    	u16 ad_next_free;
    	u16 sp_no_deb;
    	u16 sp_no_next_free;
   	public:
   		sprite_bitmap();
   		sprite_bitmap(const u8 * bmp,u16 s_x,u16 s_y,u16 ad,u16 sp_no,u16 nb_col);
   		~sprite_bitmap();
   		
   		void init();
   		
   		void update();
   		
	friend class tab_sprite_bitmap;
};
  
class tab_sprite_bitmap
{
	public:
		sprite_bitmap * (tab[MAX_SPRITE_BITMAP]);
		u16 nb;
	public:
		tab_sprite_bitmap();
		~tab_sprite_bitmap();
		
		sprite_bitmap * add_bitmap(const u8 * bmp,u16 s_x,u16 s_y,u16 col);
		u16 rem_bitmap(sprite_bitmap *);
		
};

//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////

class sprite_rotation
{
    public:
    	//caracteristiques de rotation du sprite
    	rot_data * oam_rot;
    	
    	u16 pas_angle;
    	u16 pas_zoom_x;
    	u16 pas_zoom_y;
    	
    	s32 angle;
    	FIXED_20 zoomx;
		FIXED_20 zoomy;
    public:
    	sprite_rotation();
    	~sprite_rotation();
    	
    	void init();
    	void init(u16 pas_a,u16 pas_z_x,u16 pas_z_y,u16 a,FIXED_20 z_x,FIXED_20 z_y);
    	
    	void set_pas_angle(u16 pas_a);
    	void set_pas_zoom_x(u16 pas_z_x);
    	void set_pas_zoom_y(u16 pas_z_y);
    	
		//rotation
		void rotate();
		void rotate_inv();
		//zoom
		void zoom_x();
		void zoom_x_inv();
		void zoom_y();
		void zoom_y_inv();
		void zoom();
		void zoom_inv();
		
    	void update();
    	
    	friend class tab_sprite_rotation;
};


//sens trigo
inline void sprite_rotation::rotate()						{angle+=pas_angle;if(angle>(360-pas_angle)) angle=0;}
//inverse sens trigo
inline void sprite_rotation::rotate_inv()					{angle-=pas_angle;if(angle<0) angle=360-pas_angle;}
inline void sprite_rotation::zoom_x()						{zoomx-=pas_zoom_x;}
inline void sprite_rotation::zoom_y()						{zoomy-=pas_zoom_y;}
inline void sprite_rotation::zoom_x_inv()					{zoomx+=pas_zoom_x;}
inline void sprite_rotation::zoom_y_inv()					{zoomy+=pas_zoom_y;}
inline void sprite_rotation::zoom()							{zoom_x();zoom_y();}
inline void sprite_rotation::zoom_inv()						{zoom_x_inv();zoom_y_inv();}

inline void sprite_rotation::set_pas_angle(u16 pas_a)		{pas_angle=pas_a;}
inline void sprite_rotation::set_pas_zoom_x(u16 pas_z_x)	{pas_zoom_x=pas_z_x;}
inline void sprite_rotation::set_pas_zoom_y(u16 pas_z_y)	{pas_zoom_y=pas_z_y;}
    	
class tab_sprite_rotation
{
    public:
    	sprite_rotation tab[MAX_ROTATION];
    public:
    	tab_sprite_rotation();
    	~tab_sprite_rotation();
    	
    	void init();
    	
};

//////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////

class sprite
{
    private:
    
    	//toutes les caracteristiques
    	s32 y;
		//================================================================================
    	//--------------------------------------------------------------------------------
		u16 rot_flag;
		u16 size_double_flag;
		//================================================================================
		u16 alpha_flag;
		u16 mosaic_flag;
		u16 nb_col_flag;
		u16 shape_flag;
		
    	s32 x;
		//================================================================================
		u16 h_flip_flag;
		u16 v_flip_flag;
    	//--------------------------------------------------------------------------------
		u16 rot_ind;
		//================================================================================
		u16 form_flag;
		
		u16 sp_no;
		u16 priority;
		u16 pal_no;
		
    	
    	//indice du sprite dans OAM
    	u16 ind_sp;
    	//caracteristiques du sprite
    	OAM_entry * oam;
    	
    	//image bitmap correspondante
    	sprite_bitmap * my_sprite_bitmap;
    	//les différentes rotations
    	sprite_rotation * my_sprite_rotation;
    	
    	
    	//les pas en move
    	u16 pas_move_x;
    	u16 pas_move_y;
    
    	//permet de savoir si le sprite se trouve dans l'ecran
    	bool visible_x,visible_y;
    	
    	//la position dans la map
    	s32 map_x,map_y;
    	
    	
   	private:
   		void init();
    
    public:
		sprite();
		//================================================================================
		sprite(u16 alpha,u16 mosaic,u16 nb_col,u16 x,u16 y,
				u16 h_flip,u16 v_flip,u16 priority,u16 pal_no,const u8 * bitmap,u16 s_x,u16 s_y);
    	//--------------------------------------------------------------------------------
		sprite(u16 rot_flag,u16 sd,u16 alpha,u16 mosaic,u16 nb_col,
				u16 x,u16 y,u16 rot_ind,u16 priority,u16 pal_no,const u8 * bitmap,u16 s_x,u16 s_y);
		//================================================================================
		virtual ~sprite();
		
		//set et get de quelques données membres
		void set_ind_sp(u16 no_sp);
		void set_oam(OAM_entry * o);
		bool get_visible_x();
		bool get_visible_y();
		sprite_bitmap * get_my_sprite_bitmap();
		sprite_rotation * get_my_sprite_rotation();
		//move
		void set_pas_move(u16);
		void set_pas_move(u16,u16);
		void set_pas_move_x(u16);
		void set_pas_move_y(u16);
		//angle
		void set_pas_angle(u16);
		//zoom
		void set_pas_zoom(u16);
		void set_pas_zoom(u16,u16);
		void set_pas_zoom_x(u16);
		void set_pas_zoom_y(u16);
		//map
		s32 get_map_x();
		s32 get_map_y();
		void set_map_x(s32);
		void set_map_y(s32);
		void add_map_x(s16 p=1);
		void add_map_y(s16 p=1);
		
		//a partir de la taille de l'image, permet de savoir le shape et la form
		u16 size2shape(u16 s_x,u16 s_y);
		u16 size2form(u16 s_x,u16 s_y);
		//permet d'avoir la taille en pixel de la bitmap correspondant au sprite courant
		u16 sprite2sizex();
		u16 sprite2sizey();
		
		void change_bitmap(const u8 * bitmap,u16 s_x,u16 s_y,u16 nb_col=COLOR_256,u16 pal_no=0);
		
		bool collision(sprite *);
		
		//rotation
		void rotate();
		void rotate_inv();
		//zoom
		void zoom_x();
		void zoom_x_inv();
		void zoom_y();
		void zoom_y_inv();
		void zoom();
		void zoom_inv();
		//move
		void left();
		void right();
		void up();
		void down();
    
		//get sur les attributs 0 a 3
		//att0
		s32 get_y();
		//================================================================================
    	//--------------------------------------------------------------------------------
		u16 get_rot_flag();
		u16 get_size_double_flag();
		//================================================================================
		u16 get_alpha_flag();
		u16 get_mosaic_flag();
		u16 get_nb_col_flag();
		u16 get_shape_flag();
		//att1
		s32 get_x();
		//================================================================================
		u16 get_h_flip_flag();
		u16 get_v_flip_flag();
    	//--------------------------------------------------------------------------------
		u16 get_rot_ind();
		//================================================================================
		u16 get_form_flag();
		//att3
		u16 get_sp_no();
		u16 get_priority();
		u16 get_pal_no();
		
		//set sur les attributs 0 a 3
		//att0
		void set_y(s32);
		//================================================================================
    	//--------------------------------------------------------------------------------
		void set_rot_flag(u16);
		void set_size_double_flag(u16);
		//================================================================================
		void set_alpha_flag(u16);
		void set_mosaic_flag(u16);
		void set_nb_col_flag(u16);
		void set_shape_flag(u16);
		//att1
		void set_x(s32);
		//================================================================================
		void set_h_flip_flag(u16);
		void set_v_flip_flag(u16);
    	//--------------------------------------------------------------------------------
		void set_rot_ind(u16);
		//================================================================================
		void set_form_flag(u16);
		//att3
		void set_sp_no(u16);
		void set_priority(u16);
		void set_pal_no(u16);
		
		//	attribute 0
		void set_oam_y();
		//================================================================================
    	//--------------------------------------------------------------------------------
		void set_oam_rot_flag();
		void set_oam_size_double_flag();
		//================================================================================
		void set_oam_alpha_flag();
		void set_oam_mosaic_flag();
		void set_oam_nb_col_flag();
		void set_oam_shape_flag();
		//	attribute 1
		void set_oam_x();
		//================================================================================
		void set_oam_h_flip_flag();
		void set_oam_v_flip_flag();
    	//--------------------------------------------------------------------------------
		void set_oam_rot_ind();
		//================================================================================
		void set_oam_form_flag();
		//	attribute 2
		void set_oam_sp_no();
		void set_oam_priority();
		void set_oam_pal_no();
		
};

inline void sprite::set_ind_sp(u16 no_sp)			{ind_sp=no_sp;}
inline void sprite::set_oam(OAM_entry * o)			{oam=o;}

inline bool sprite::get_visible_x()					{return visible_x;}
inline bool sprite::get_visible_y()					{return visible_y;}

inline sprite_bitmap * sprite::get_my_sprite_bitmap()		{return my_sprite_bitmap;}
inline sprite_rotation * sprite::get_my_sprite_rotation()	{return my_sprite_rotation;}

inline void sprite::set_pas_move(u16 pas)					{pas_move_x=pas_move_y=pas;map_x=x/pas;map_y=y/pas;}
inline void sprite::set_pas_move(u16 pas_x,u16 pas_y)		{pas_move_x=pas_x;pas_move_y=pas_y;map_x=x/pas_x;map_y=y/pas_y;}
inline void sprite::set_pas_move_x(u16 pas)					{pas_move_x=pas;map_x=x/pas;}
inline void sprite::set_pas_move_y(u16 pas)					{pas_move_y=pas;map_y=y/pas;}

inline void sprite::set_pas_angle(u16 pas)					{if(my_sprite_rotation) my_sprite_rotation->set_pas_angle(pas);}

inline void sprite::set_pas_zoom(u16 pas)					{if(my_sprite_rotation){my_sprite_rotation->set_pas_zoom_x(pas);my_sprite_rotation->set_pas_zoom_y(pas);}}
inline void sprite::set_pas_zoom(u16 pas_x,u16 pas_y)		{if(my_sprite_rotation){my_sprite_rotation->set_pas_zoom_x(pas_x);my_sprite_rotation->set_pas_zoom_y(pas_y);}}
inline void sprite::set_pas_zoom_x(u16 pas)					{if(my_sprite_rotation) my_sprite_rotation->set_pas_zoom_x(pas);}
inline void sprite::set_pas_zoom_y(u16 pas)					{if(my_sprite_rotation) my_sprite_rotation->set_pas_zoom_y(pas);}


inline s32 sprite::get_map_x()						{return map_x;}
inline s32 sprite::get_map_y()						{return map_y;}
inline void sprite::set_map_x(s32 m)				{map_x=m;}
inline void sprite::set_map_y(s32 m)				{map_y=m;}
inline void sprite::add_map_x(s16 p)				{map_x+=p;}
inline void sprite::add_map_y(s16 p)				{map_y+=p;}
//////////////////////////////////////////////////////////////////////////////////////////

//sens trigo
inline void sprite::rotate()				{if(my_sprite_rotation) my_sprite_rotation->rotate();}
//inverse sens trigo
inline void sprite::rotate_inv()			{if(my_sprite_rotation) my_sprite_rotation->rotate_inv();}
inline void sprite::zoom_x()				{if(my_sprite_rotation) my_sprite_rotation->zoom_x();}
inline void sprite::zoom_y()				{if(my_sprite_rotation) my_sprite_rotation->zoom_y();}
inline void sprite::zoom_x_inv()			{if(my_sprite_rotation) my_sprite_rotation->zoom_x_inv();}
inline void sprite::zoom_y_inv()			{if(my_sprite_rotation) my_sprite_rotation->zoom_y_inv();}
inline void sprite::zoom()					{if(my_sprite_rotation) my_sprite_rotation->zoom();}
inline void sprite::zoom_inv()				{if(my_sprite_rotation) my_sprite_rotation->zoom_inv();}


//////////////////////////////////////////////////////////////////////////////////////////
//	attribute 0
inline s32 sprite::get_y()							{return y;}
//========================================================================================
//----------------------------------------------------------------------------------------
inline u16 sprite::get_rot_flag()					{return rot_flag;}
inline u16 sprite::get_size_double_flag()			{return size_double_flag;}
//========================================================================================
inline u16 sprite::get_alpha_flag()					{return alpha_flag;}
inline u16 sprite::get_mosaic_flag()				{return mosaic_flag;}
inline u16 sprite::get_nb_col_flag()				{return nb_col_flag;}
inline u16 sprite::get_shape_flag()					{return shape_flag;}
//	attribute 1
inline s32 sprite::get_x()							{return x;}
//========================================================================================
inline u16 sprite::get_h_flip_flag()				{return h_flip_flag;}
inline u16 sprite::get_v_flip_flag()				{return v_flip_flag;}
//----------------------------------------------------------------------------------------
inline u16 sprite::get_rot_ind()					{return rot_ind;}
//========================================================================================
inline u16 sprite::get_form_flag()					{return form_flag;}
//	attribute 2
inline u16 sprite::get_sp_no()						{return sp_no;}
inline u16 sprite::get_priority()					{return priority;}
inline u16 sprite::get_pal_no()						{return pal_no;}

//////////////////////////////////////////////////////////////////////////////////////////
//	attribute 0
inline void sprite::set_y(s32 yy)					{y=yy;}
//========================================================================================
//----------------------------------------------------------------------------------------
inline void sprite::set_rot_flag(u16 r)				{if(my_sprite_rotation) rot_flag=r;}
//inline void sprite::set_size_double_flag(u16 sd)	{size_double_flag=sd;}
//========================================================================================
inline void sprite::set_alpha_flag(u16 alpha)		{alpha_flag=alpha;}
inline void sprite::set_mosaic_flag(u16 m)			{mosaic_flag=m;}
inline void sprite::set_nb_col_flag(u16 c)			{nb_col_flag=c;}
inline void sprite::set_shape_flag(u16 shape)		{shape_flag=shape;}
//	attribute 1
inline void sprite::set_x(s32 xx)					{x=xx;}
//========================================================================================
inline void sprite::set_h_flip_flag(u16 hf)			{if(!my_sprite_rotation) h_flip_flag=hf;}
inline void sprite::set_v_flip_flag(u16 vf)			{if(!my_sprite_rotation) v_flip_flag=vf;}
//----------------------------------------------------------------------------------------
inline void sprite::set_rot_ind(u16 r)				{if(my_sprite_rotation) rot_ind=r;}
//========================================================================================
inline void sprite::set_form_flag(u16 form)			{form_flag=form;}
//	attribute 2
inline void sprite::set_sp_no(u16 no)				{sp_no=no;}
inline void sprite::set_priority(u16 p)				{priority=p;}
inline void sprite::set_pal_no(u16 no)				{pal_no=no;}

//	attribute 0
inline void sprite::set_oam_y()						{oam->attribute0=(oam->attribute0&0xFF00)|y;}
//========================================================================================
//----------------------------------------------------------------------------------------
inline void sprite::set_oam_rot_flag()				{oam->attribute0=(oam->attribute0&0xFEFF)|rot_flag;}
inline void sprite::set_oam_size_double_flag()		{oam->attribute0=(oam->attribute0&0xFDFF)|size_double_flag;}
//========================================================================================
inline void sprite::set_oam_alpha_flag()			{oam->attribute0=(oam->attribute0&0xF3FF)|alpha_flag;}
inline void sprite::set_oam_mosaic_flag()			{oam->attribute0=(oam->attribute0&0xEFFF)|mosaic_flag;}
inline void sprite::set_oam_nb_col_flag()			{oam->attribute0=(oam->attribute0&0xDFFF)|nb_col_flag;}
inline void sprite::set_oam_shape_flag()			{oam->attribute0=(oam->attribute0&0x3FFF)|shape_flag;}
//	attribute 1
inline void sprite::set_oam_x()						{oam->attribute1=(oam->attribute1&0xFE00)|x;}
//========================================================================================
inline void sprite::set_oam_h_flip_flag()			{oam->attribute1=(oam->attribute1&0xEFFF)|h_flip_flag;}
inline void sprite::set_oam_v_flip_flag()			{oam->attribute1=(oam->attribute1&0xDFFF)|v_flip_flag;}
//----------------------------------------------------------------------------------------
inline void sprite::set_oam_rot_ind()				{oam->attribute1=(oam->attribute1&0xF1FF)|ROTDATA(rot_ind);}
//========================================================================================
inline void sprite::set_oam_form_flag()				{oam->attribute1=(oam->attribute1&0x3FFF)|form_flag;}
//	attribute 2
inline void sprite::set_oam_sp_no()					{oam->attribute2=(oam->attribute2&0xFC00)|sp_no;}
inline void sprite::set_oam_priority()				{oam->attribute2=(oam->attribute2&0xF3FF)|PRIORITY(priority);}
inline void sprite::set_oam_pal_no()				{oam->attribute2=(oam->attribute2&0x0FFF)|PALETTE(pal_no);}
//////////////////////////////////////////////////////////////////////////////////////////



class tab_sprite
{
    private:
    	sprite * (tab[MAX_SPRITE]);
    	u16 nb;
    public:
    	tab_sprite();
    	~tab_sprite();
    	
    	sprite * get_sprite(u16);
    	u16 get_nb();
    	
    	void add_sprite(sprite *);
		void rem_sprite(sprite * s);
    	void rem_sprite(u16);
    	
		void change_bitmap(const u8 * bitmap,u16 s_x,u16 s_y,u16 nb_col=COLOR_256,u16 pal_no=0);
    	
		void left();
		void right();
		void up();
		void down();
		
		
	//la classe sprite peut acceder aux données membres de le class tab_sprite
	friend class sprite;
};

inline u16 tab_sprite::get_nb()								{return nb;}


#endif
