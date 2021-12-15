#ifndef EVENTS_h
#define EVENTS_h

enum event_type
{
    NONE,
    I2C_TO,
    POINT_CLOSED,
    POINT_THROWN
};

struct s_Event{
    event_type event;
    u_int16_t param;
};

typedef s_Event t_Event;
typedef t_Event* p_Event;
void push_Event_data(event_type, uint16_t param);
void push_Event(p_Event event);
p_Event get_Event();

#define EVENT_HANDLER(a,b) void a(p_Event b)
#endif