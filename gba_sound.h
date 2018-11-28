#ifndef _GBA_SOUND_H_
#define _GBA_SOUND_H_

#define SND_ENABLE				0x00000080
#define SND_OUTPUT_RATIO_25		0x0000
#define SND_OUTPUT_RATIO_50		0x0001
#define SND_OUTPUT_RATIO_100	0x0002
#define DSA_OUTPUT_RATIO_50		0x0000
#define DSA_OUTPUT_RATIO_100	0x0004
#define DSA_OUTPUT_TO_RIGHT		0x0100
#define DSA_OUTPUT_TO_LEFT		0x0200
#define DSA_OUTPUT_TO_BOTH		0x0300
#define DSA_TIMER0				0x0000
#define DSA_TIMER1				0x0400
#define DSA_FIFO_RESET			0x0800
#define DSB_OUTPUT_RATIO_50		0x0000
#define DSB_OUTPUT_RATIO_100	0x0008
#define DSB_OUTPUT_TO_RIGHT		0x1000
#define DSB_OUTPUT_TO_LEFT		0x2000
#define DSB_OUTPUT_TO_BOTH		0x3000
#define DSB_TIMER0				0x0000
#define DSB_TIMER1				0x4000
#define DSB_FIFO_RESET			0x8000

//#define FREQUENCY				16000
#define TIMER_INTERVAL_16KHZ	0xFBE8		//(65536-(round((2^24)/FREQUENCY)))

typedef struct
{
    s8 * data;
    u32 length;
}SAMPLE;

#endif
