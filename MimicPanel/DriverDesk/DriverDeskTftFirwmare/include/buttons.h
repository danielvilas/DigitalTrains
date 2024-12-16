#ifndef DD_BUTTONS
#define DD_BUTTONS
#include <Arduino.h>



#define RENC_A PA1
#define RENC_B PA2
#define RENC_S PA3

#define BTN_H PA8
#define BTN_H_PORT portA
#define BTN_H_MASK (1<<8)

#define BTN_S PA3
#define BTN_S_PORT portA
#define BTN_S_MASK (1<<3)

#define BTN_1 PB10
#define BTN_1_PORT portB
#define BTN_1_MASK (1<<10)

#define BTN_2 PB9
#define BTN_2_PORT portB
#define BTN_2_MASK (1<<9)

#define BTN_3 PB8
#define BTN_3_PORT portB
#define BTN_3_MASK (1<<8)

#define BTN_4 PB1
#define BTN_4_PORT portB
#define BTN_4_MASK (1<<1)

#define BTN_5 PB0
#define BTN_5_PORT portB
#define BTN_5_MASK (1<<0)

#define BTN_6 PB15
#define BTN_6_PORT portB
#define BTN_6_MASK (1<<15)

#define BTN_7 PB14
#define BTN_7_PORT portB
#define BTN_7_MASK (1<<14)

#define BTN_8 PB13
#define BTN_8_PORT portB
#define BTN_8_MASK (1<<13)

#define BTN_9 PB12
#define BTN_9_PORT portB
#define BTN_9_MASK (1<<12)

#define BTN_10 PB11
#define BTN_10_PORT portB
#define BTN_10_MASK (1<<11)


#define PA_MASK 0x0108 // 0000 0001 0000 1000 PA8 PA3
#define PB_MASK 0xff03 // 1111 1111 0000 0011 PB0 PB1 PB8-PB15



#define NUM_BUTTONS 12
#define NUM_EVENTS 10

struct s_dd_button{
    u_int8_t debounceTimer;
    u_int16_t mask;
};

typedef struct s_dd_button t_dd_button;
typedef t_dd_button* p_dd_button;


u_int16_t convertToBtns(u_int16_t portA, u_int16_t PortB);
ErrorStatus pushPorts(u_int16_t btns);
ErrorStatus popPorts(u_int16_t* btns);

#endif