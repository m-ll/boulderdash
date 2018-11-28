#ifndef _EXT_INCLUDE_H_
#define _EXT_INCLUDE_H_

#include "gba.h"

//on est obliger de faire comme ca,
//sinon quand on inclus directement les fichiers *.raw.h dans des fichiers *.cpp
//si on les inclus dans plusieurs *.cpp,
//l'adresse de chaque tableau n'est plus la meme dans chacun des fichiers *.cpp
//alors on fait un extern pour chaque tableau

//sprite
extern const unsigned short master_sprite_Palette[];

extern const u16 hero_Width;
extern const u16 hero_Height;
extern const unsigned char hero_Bitmap[];
extern const u16 hero_gagne_Width;
extern const u16 hero_gagne_Height;
extern const unsigned char hero_gagne_Bitmap[];
extern const u16 hero_perdu_Width;
extern const u16 hero_perdu_Height;
extern const unsigned char hero_perdu_Bitmap[];
extern const u16 pierre_Width;
extern const u16 pierre_Height;
extern const unsigned char pierre_Bitmap[];
extern const u16 oeuf_Width;
extern const u16 oeuf_Height;
extern const unsigned char oeuf_Bitmap[];
extern const u16 oeuf_bis_Width;
extern const u16 oeuf_bis_Height;
extern const unsigned char oeuf_bis_Bitmap[];

#endif
