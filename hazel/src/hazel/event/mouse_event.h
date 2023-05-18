#pragma once 

#include "hazel/event/event.h"
#include "hazel/mouse_code.h"
#include <tuple>

namespace Hazel
{

class MouseMovedEvent : public Event
{
public:
    MouseMovedEvent(const float x, const float y) : x(x), y(y){}

    float getX(){ return x;}
    float getY(){ return y;}

    auto getPos(){return std::tuple<float,float>(x, y);}
    
    std::string toString() const override
    {
        std::stringstream ss;
        ss << "MouseMovedEvent: ( " << x << ", y" << ")";
        return ss.str();
    }
    EVENT_CLASS_TYPE(MouseMoved)
    EVENT_CLASS_CATEGORY(EventCategoryMouse | EventCategoryInput)
    
private:
    float x, y;

};

class MouseScrolledEvent : Event
{
public:
    MouseScrolledEvent(const float x_off, const float y_off) : 
        x_offset(x_off), y_offset(y_off) {}
    float getXOffset(){ return x_offset; }
    float getYOffset(){ return y_offset; };
    auto getOffset(){ return std::tuple<int, int>(x_offset, y_offset);}
    
    EVENT_CLASS_CATEGORY(EventCategoryInput| EventCategoryMouse)
    EVENT_CLASS_TYPE(MouseScrolled)
    

private:
    float x_offset, y_offset;

};


class MouseButtonEvent : Event
{
public:
    
    unsigned int  getMouseCode(){ return mouse_code; }   

    EVENT_CLASS_CATEGORY(EventCategoryMouse | EventCategoryInput | EventCategoryMouseButton)

protected:
    MouseButtonEvent(const unsigned int mousecode)
         : mouse_code(mousecode){}
    unsigned int mouse_code;
};

class MouseBtnPressedEvent : public MouseButtonEvent
{
public:
    MouseBtnPressedEvent() = default;
    std::string  toString() const override
    {
        std::stringstream ss;
        ss << "MouseBtnPressd: mouse_code=" << mouse_code;
        return ss.str();
    }

    EVENT_CLASS_TYPE(MouseBtnPressed)

};

class MouseBtnReleasedEvent : public MouseButtonEvent
{
public:
    MouseBtnReleasedEvent() = default;
    
    std::string toString()
    {
        std::stringstream ss;
        ss << "MouseBtnReleasedEvent: mouse_code=" << mouse_code;
        return ss.str();
    }
    EVENT_CLASS_TYPE(MouseBtnReleased)
private:
};

}


