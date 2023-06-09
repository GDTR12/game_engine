#include "log.h"
#include "hazel/log.h"
#include "spdlog/sinks/stdout_color_sinks.h"

namespace Hazel{
    
std::shared_ptr<spdlog::logger> Log::s_ClientLogger;
std::shared_ptr<spdlog::logger> Log::s_CoreLogger;

void Log::init()
{
    spdlog::set_pattern("%^[%T] %n: %v%$");
    s_ClientLogger = spdlog::stdout_color_mt("App");
    s_ClientLogger->set_level(spdlog::level::trace);

    s_CoreLogger = spdlog::stdout_color_mt("Hazel");
    s_CoreLogger->set_level(spdlog::level::trace);


}

}
