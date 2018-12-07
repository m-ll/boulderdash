///
/// Copyright (c) 2004-19 m-ll. All Rights Reserved.
///
/// Licensed under the MIT License.
/// See LICENSE file in the project root for full license information.
///
/// 2b13c8312f53d4b9202b6c8c0f0e790d10044f9a00d8bab3edf3cd287457c979
/// 29c355784a3921aa290371da87bce9c1617b8584ca6ac6fb17fb37ba4a07d191
///

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
