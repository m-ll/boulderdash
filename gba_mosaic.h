#ifndef _GBA_MOSAIC_H_
#define _GBA_MOSAIC_H_

#define MOS_BG_HOR(n) (n)
#define MOS_BG_VER(n) (n<<4)
#define MOS_OBJ_HOR(n) (n<<8)
#define MOS_OBJ_VER(n) (n<<12)

#define set_mosaic(bh,bv,oh,ov) ((bh)+(bv<<4)+(oh<<8)+(ov<<12))


#endif
