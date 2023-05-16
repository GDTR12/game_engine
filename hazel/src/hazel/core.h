#pragma once

#if defined(_WIN32) && defined(MYLIB_DLL)
    #ifdef HZ_BUILD_DLL
        #define HAZEL_API __declspec(dllexport)
    #else
        #define HAZEL_API __declspec(dllimport)
    #endif

#else 
    #if defined(__linux__) && defined(MYLIB_DLL)
        #define HAZEL_API
    #endif
#endif

