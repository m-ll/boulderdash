#ifndef _GBA_KEYS_H_
#define _GBA_KEYS_H_

#define KEY_A				0x001	//W
#define KEY_B				0x002	//X
#define KEY_SELECT			0x004	//backspace
#define KEY_START			0x008	//entree
#define KEY_RIGHT			0x010
#define KEY_LEFT			0x020
#define KEY_UP				0x040
#define KEY_DOWN			0x080
#define KEY_R				0x100	//S
#define KEY_L				0x200	//Q

//#define KEYS				(*(volatile u16 *)0x04000130)
#define KEYS				(*(volatile u32 *)0x04000130)


#define key_down(k)			(~KEYS&(k))
#define any_key_down()		(key_down(KEY_A)||key_down(KEY_B)||key_down(KEY_L)||key_down(KEY_R)||\
							key_down(KEY_SELECT)||key_down(KEY_START)||\
							key_down(KEY_LEFT)||key_down(KEY_RIGHT)||key_down(KEY_UP)||key_down(KEY_DOWN))
#define	wait_key(k)			while(!key_down(k));wait_time(0,100);


#endif
