#pragma once 

#include "hazel/event/event.h"
#include "hazel/key_code.h"

namespace Hazel
{
    
class KeyEvent:public Event
{

public:
    ~KeyEvent(){}
    EVENT_CLASS_CATEGORY(EventCategoryInput | EventCategoryKeyboard)

protected:
    KeyEvent(const KeyCode keycode):key_code(keycode){}
    KeyCode key_code;

private:

};

class KeyPressedEvent : public KeyEvent
{
public:
    KeyPressedEvent(const KeyCode keycode, bool isreapeat=false):KeyEvent(key_code), is_repeat(is_repeat){}
    bool isRepeat() const {return isRepeat;}
    ~KeyPressedEvent(){}

    inline std::string toString() const 
    {
        std::stringstream ss;
        ss << "KeyPressedEvent: key_code=" << key_code << ", is_repeat=" << (is_repeat ? "true" : "false");
        return ss.str();
    }

    EVENT_CLASS_TYPE(KeyPressed)

protected:

private:
    bool is_repeat;
};

class KeyReleasedEvent : public KeyEvent
{
public:
    KeyReleasedEvent(const KeyCode keycode) : KeyEvent(keycode){}
    ~KeyReleasedEvent(){}

    std::string toString() const override
    {
        std::stringstream ss;
        ss << "KeyReleasedEvent: " << key_code;
        return ss.str();
    }

    EVENT_CLASS_TYPE(KeyReleased)

protected:

private:

};



} // namespace Hazel

