aux_source_directory(./src CPP_SRCS)

add_executable(app ${CPP_SRCS})

target_compile_features(app PRIVATE cxx_std_17)

target_link_libraries(app PUBLIC hazel)

target_include_directories(app PUBLIC ./src)
