#ifndef _DEBUG_
#define _DEBUG_

//#define _ROT_ZOOM_A_FAIRE_
extern int mike;

#define _DEBUG_
//pour enlever toutes les conditions au debut des fonctions	quand tout sera terminé
#define _COND_

void debug(char * mess,...);
void affiche_caract(u8 c,u16 x,u16 y,u8 font,u8 size);


#endif
