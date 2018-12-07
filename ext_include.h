///
/// Copyright (c) 2004-19 m-ll. All Rights Reserved.
///
/// Licensed under the MIT License.
/// See LICENSE file in the project root for full license information.
///
/// 2b13c8312f53d4b9202b6c8c0f0e790d10044f9a00d8bab3edf3cd287457c979
/// 29c355784a3921aa290371da87bce9c1617b8584ca6ac6fb17fb37ba4a07d191
///

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
