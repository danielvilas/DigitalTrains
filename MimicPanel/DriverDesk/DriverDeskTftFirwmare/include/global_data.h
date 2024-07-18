#ifndef DD_GLOBAL_DATA
#define DD_GLOBAL_DATA
#include <Arduino.h>
enum e_reg_mode{
    REG_BACKWARD,
    REG_RELEASED,
    REG_FORWARD
};
typedef enum e_reg_mode t_reg_mode;


class GlobalData{
    public:

        GlobalData ();

        uint8_t get_speed();
        void set_speed(uint8_t _spd);
        bool is_speed_dirty();
        
        uint8_t get_accel();
        void set_accel(uint8_t _accel);
        bool is_accel_dirty();

        uint8_t get_brake();
        void set_brake(uint8_t _brake);
        bool is_brake_dirty();

        uint16_t get_btns();
        void set_btns(uint16_t _btns);
        bool is_btns_dirty();

        t_reg_mode get_reg();
        void set_reg(t_reg_mode _reg);
        bool is_reg_dirty();

        void clear_dirty();

    private:
        uint8_t dirty;
        t_reg_mode reg_mode;
        uint8_t speed;
        uint16_t buttons;
        uint8_t accel;
        uint8_t dynamic;
        uint8_t brake;
};

#define DIRTY_GLOBAL_SPEED 0x01
#define DIRTY_GLOBAL_REG   0x02
#define DIRTY_GLOBAL_BTNS  0x04
#define DIRTY_GLOBAL_ACCEL 0x08
#define DIRTY_GLOBAL_DYN   0x10
#define DIRTY_GLOBAL_BRK   0x20

extern GlobalData global;

#endif