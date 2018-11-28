#include "save.h"

//		SAVE

void save_8(u16 offset,u8 val)
{
    *(u8 *)(SAVE_RAM+offset)=val;
}

void save_16(u16 offset,u16 val)
{
    u8 b1=(u8)((val)&0xFF);
    u8 b2=(u8)((val>>8));
    
    save_8(offset,b1);
    save_8(offset+1,b2);
}

void save_32(u16 offset,u32 val)
{
    u8 b1=(u8)((val)&0xFF);
    u8 b2=(u8)((val>>8)&0xFF);
    u8 b3=(u8)((val>>16)&0xFF);
    u8 b4=(u8)((val>>24));
    
    save_8(offset,b1);
    save_8(offset+1,b2);
    save_8(offset+2,b3);
    save_8(offset+3,b4);
}

void save_string(u16 offset,char * str)
{
    u16 size=strlen(str);
    //+1 pour le '\0'
    for(u16 i=0;i<size+1;i++)
    	save_8(offset+i,str[i]);
}

//		LOAD

u8 load_8(u16 offset)
{
    return *(u8 *)(SAVE_RAM+offset);
}

u16 load_16(u16 offset)
{
    u8 b1=load_8(offset);
    u8 b2=load_8(offset+1);
    
    return (u16) (b1|(b2<<8));
}

u32 load_32(u16 offset)
{
    u8 b1=load_8(offset);
    u8 b2=load_8(offset+1);
    u8 b3=load_8(offset+2);
    u8 b4=load_8(offset+3);
    
    return (u32) (b1|(b2<<8)|(b3<<16)|(b4<<24));
}

void load_string(u16 offset,u16 size,char * str)
{
    for(u16 i=0;i<size;i++)
    	str[i]=load_8(offset+i);
}


