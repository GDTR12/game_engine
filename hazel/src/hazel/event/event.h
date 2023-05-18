#pragma once 

#include <string>
#include <functional>
#include "hazel/core.h"
#include <sstream>

namespace Hazel 
{

enum class EventType{
    None = 0,
    WindowClose,     WindowResize,     WindowFocus, WindowLostFocus, WindowMoved,
    MouseBtnPressed, MouseBtnReleased, MouseMoved,  MouseScrolled,
    AppTick,         AppUpdate,        AppRender,
    KeyPressed,      KeyReleased,   
    
};

enum EventCategory{
    None = 0,
    EventCategoryApplication    = BIT(0),
    EventCategoryInput          = BIT(1),
    EventCategoryKeyboard       = BIT(2),
    EventCategoryMouse          = BIT(3),
    EventCategoryMouseButton    = BIT(4),
};

#define EVENT_CLASS_TYPE(type) static EventType getStaticType(){return EventType::##type;}\
                                virtual EventType getEventType() const override{return getStaticType();}\
                                virtual const char* getName() const override {return #type;}

#define EVENT_CLASS_CATEGORY(category) virtual int getCategoryFlags() const override {return category;}

class HAZEL_API Event{

    friend class EventDispatcher;

public:
    virtual ~Event() = default;

    bool handle = false;

    virtual EventType getEventType() const = 0;
    virtual const char* getName() const = 0;
    virtual int getCategoryFlags() const = 0;
    /* 非纯虚函数，只要子类重写了 getName(), 就可以使用 cout 输出 */
    virtual std::string toString() const {return getName();}
    
    inline bool isInCategory(EventCategory category){ return getCategoryFlags() & category; }

protected:
    bool handle = false;
};

class HAZEL_API EventDispatcher{

    friend class Event;

    template<typename T>
    using EventFn = std::function<bool(T&)>;

public:
    EventDispatcher(Event& event):mEvent(event){}
    
    /* 通过模板类可以： */
    template<typename T, typename Fn>
    bool Dispatch(const Fn&func)
    {
        if(mEvent.getEventType() == T::getStaticType())
        {
            mEvent.handle |= func(static_cast<T&>(mEvent));
            return true;
        }
        return false;
    }

private:
    Event& mEvent;

};

/* 通过重载 std::ostream 的 << 操作符使得打印输出 */
inline std::ostream& operator<<(std::ostream& os, const Event& event) 
{
    return os<<event.toString();
}

} // namespace Hazel    

