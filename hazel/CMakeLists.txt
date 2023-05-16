
aux_source_directory(./src/hazel CPP_SRCS)

add_library(hazel SHARED ${CPP_SRCS})

target_compile_definitions(hazel PUBLIC MYLIB_DLL)

target_include_directories(hazel PUBLIC ./src ./)

target_compile_features(hazel PRIVATE cxx_std_17)
target_compile_options(hazel PRIVATE -lm)

