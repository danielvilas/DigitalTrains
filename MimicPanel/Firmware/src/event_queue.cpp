#include "panel_controller.h"
#include <ArduinoQueue.h>

ArduinoQueue<p_Event> eventQueue(MAX_QUEUE_SIZE);

void push_Event_data(event_type type, uint16_t param){
    t_Event* event;
    event= (t_Event*)malloc(sizeof(t_Event));
    event->event=type;
    event->param=param;

    push_Event(event);
}
void push_Event(p_Event event){
    if(eventQueue.isFull()){
        p_Event tmp = eventQueue.dequeue();
        free(tmp);
    }
    eventQueue.enqueue(event);
}
p_Event get_Event(){
    if(eventQueue.isEmpty())return NULL;
    return eventQueue.dequeue();
}
