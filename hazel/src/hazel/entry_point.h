#pragma once

#ifdef __linux__
#include "hazel/log.h"
#include "hazel/application.h"

extern Hazel::Application* Hazel::createApplication();

int main(int argc, char** argv)
{
    Hazel::Log::init();
    HZ_CORE_WARN("Initialized log!");
    HZ_INFO("Hello welcome to hazel!");

    auto app = Hazel::createApplication();
    app->run();
    delete app;
}


#endif
