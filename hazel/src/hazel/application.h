#pragma once

#include "hazel/core.h"

namespace Hazel{

class HAZEL_API Application
{
private:
    
public:
    Application();
    virtual ~Application();
    void run();
};

// TO be created by user!
Application* createApplication();

}