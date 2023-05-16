#pragma once

#ifdef __linux__
#include "application.h"

extern Hazel::Application* Hazel::createApplication();

int main(int argc, char** argv)
{
    auto app = Hazel::createApplication();
    app->run();
    delete app;
}


#endif
