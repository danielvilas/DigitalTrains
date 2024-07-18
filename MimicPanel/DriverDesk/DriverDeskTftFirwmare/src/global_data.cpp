#include "global_data.h"

GlobalData::GlobalData()
{
    this->dirty = 0;
    this->speed = 0;
    this->reg_mode = REG_RELEASED;
    this->buttons = 0;
    this->accel = 0;
    this->dynamic = 0;
    this->brake = 0;
}

uint8_t GlobalData::get_speed() {
    return this->speed;
}
void GlobalData::set_speed(uint8_t _spd) {
    this->speed=_spd;
    this->dirty |= DIRTY_GLOBAL_SPEED;
}
bool GlobalData::is_speed_dirty() {
    return (this->dirty & DIRTY_GLOBAL_SPEED)!=0;
}

uint8_t GlobalData::get_accel() {
    return this->accel;
}
void GlobalData::set_accel(uint8_t _accel) {
    this->accel=_accel;
    this->dirty |= DIRTY_GLOBAL_ACCEL;
}
bool GlobalData::is_accel_dirty() {
    return (this->dirty & DIRTY_GLOBAL_ACCEL)!=0;
}

uint8_t GlobalData::get_brake() {
    return this->brake;
}
void GlobalData::set_brake(uint8_t _brake) {
    this->brake=_brake;
    this->dirty |= DIRTY_GLOBAL_BRK;
}
bool GlobalData::is_brake_dirty() {
    return (this->dirty & DIRTY_GLOBAL_BRK)!=0;
}

uint16_t GlobalData::get_btns() {
    return this->buttons;
}
void GlobalData::set_btns(uint16_t _btns) {
    this->buttons=_btns;
    this->dirty |= DIRTY_GLOBAL_BTNS;
}
bool GlobalData::is_btns_dirty() {
    return (this->dirty & DIRTY_GLOBAL_BTNS)!=0;
}

t_reg_mode GlobalData::get_reg() {
    return this->reg_mode;
}
void GlobalData::set_reg(t_reg_mode _reg) {
    this->reg_mode=_reg;
    this->dirty |= DIRTY_GLOBAL_REG;
}
bool GlobalData::is_reg_dirty() {
    return (this->dirty & DIRTY_GLOBAL_REG)!=0;
}

void GlobalData::clear_dirty() {
    this->dirty=0;
}