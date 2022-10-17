# cc65 toolchain for CMake
# Copyright (C) 2021 Tentei Ltd.
# DISTRIBUTED AS PUBLIC DOMAIN. No restrictions apply.

include(Library/CMake/Atari/CMake/Compiler/CC65.cmake)

set(CMAKE_ASM_COMPILER_ID_RUN YES)
set(CMAKE_ASM_COMPILER_ID_WORKS YES)
set(CMAKE_ASM_COMPILER_ID_FORCED YES)

set(CMAKE_ASM_DEFINE_FLAG "-D ")
set(CMAKE_ASM_VERBOSE_FLAG "-v" )
set(CMAKE_ASM_FLAGS_DEBUG_INIT "-g -Dsym=DEBUG")
set(CMAKE_DEPFILE_FLAGS_C "--create-dep <DEP_FILE>")
set(CMAKE_INCLUDE_FLAG_C "-I ")

set(CMAKE_ASM_COMPILE_OBJECT
  "<CMAKE_ASM_CC65_COMPILER> -o <OBJECT> <OBJECT>")

set(CMAKE_C_LINK_EXECUTABLE
  "<CMAKE_LINKER> <LINK_FLAGS> <LINK_LIBRARIES> <OBJECTS> -o <TARGET>")
