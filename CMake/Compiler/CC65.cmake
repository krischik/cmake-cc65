# cc65 toolchain for CMake
# Copyright (C) 2021 Tentei Ltd.
# DISTRIBUTED AS PUBLIC DOMAIN. No restrictions apply.

include_guard()

if(CMAKE_SYSTEM_NAME)
	if(CMAKE_SYSTEM_NAME MATCHES AppleII)
		set(_SYSTEM apple2)

	elseif(CMAKE_SYSTEM_NAME MATCHES AppleIIeEnhanced)
		set(_SYSTEM apple2enh)
		set(_CPU 65C02)

	elseif(CMAKE_SYSTEM_NAME MATCHES Atari2600)
		set(_SYSTEM atari2600)

	elseif(CMAKE_SYSTEM_NAME MATCHES Atari5200)
		set(_SYSTEM atari5200)

	elseif(CMAKE_SYSTEM_NAME MATCHES Atmos)
		set(_SYSTEM atmos)

	elseif(CMAKE_SYSTEM_NAME MATCHES BBCMicro)
		set(_SYSTEM bbc)

	elseif(CMAKE_SYSTEM_NAME MATCHES CBMIIB)
		set(_SYSTEM cbm610)

	elseif(CMAKE_SYSTEM_NAME MATCHES CBMIIP)
		set(_SYSTEM cbm510)

	elseif(CMAKE_SYSTEM_NAME MATCHES Challenger1P)
		set(_SYSTEM osic1p)

	elseif(CMAKE_SYSTEM_NAME MATCHES CommanderX16)
		set(_SYSTEM cx16)
		set(_CPU 65C02)

	elseif(CMAKE_SYSTEM_NAME MATCHES Commodore16)
		set(_SYSTEM c16)

	elseif(CMAKE_SYSTEM_NAME MATCHES Commodore64)
		set(_SYSTEM c64)

	elseif(CMAKE_SYSTEM_NAME MATCHES Commodore128)
		set(_SYSTEM c128)

	elseif(CMAKE_SYSTEM_NAME MATCHES CreatiVision)
		set(_SYSTEM creativision)

	elseif(CMAKE_SYSTEM_NAME MATCHES Gamate)
		set(_SYSTEM gamate)

	elseif(CMAKE_SYSTEM_NAME MATCHES Lynx)
		set(_SYSTEM lynx)
		set(_CPU 65SC02)

	elseif(CMAKE_SYSTEM_NAME MATCHES LUnix)
		set(_SYSTEM lunix)

	elseif(CMAKE_SYSTEM_NAME MATCHES NES)
		set(_SYSTEM nes)

	elseif(CMAKE_SYSTEM_NAME MATCHES PCEngine)
		set(_SYSTEM pce)
		set(_CPU HuC6280)

	elseif(CMAKE_SYSTEM_NAME MATCHES PET)
		set(_SYSTEM pet)

	elseif(CMAKE_SYSTEM_NAME MATCHES Plus4)
		set(_SYSTEM plus4)

	elseif(CMAKE_SYSTEM_NAME MATCHES Supervision)
		set(_SYSTEM supervision)
		set(_CPU 65SC02)

	elseif(CMAKE_SYSTEM_NAME MATCHES Telestrat)
		set(_SYSTEM telestrat)

	elseif(CMAKE_SYSTEM_NAME MATCHES VIC20)
		set(_SYSTEM vic20)
	endif()
endif()

if(NOT _SYSTEM)
	set(_SYSTEM none)
endif()

if(NOT _CPU)
	set(_CPU 6502)
endif()

add_compile_options(--cpu ${_CPU} --target ${_SYSTEM})

unset(_SYSTEM)
unset(_CPU)

find_program(CMAKE_AR ar65 DOC "cc65 archiver")
set(CMAKE_${lang}_COMPILER_AR ${CMAKE_AR} CACHE FILEPATH "cc65 archiver" FORCE)
find_program(CMAKE_LINKER ld65 DOC "cc65 linker")

set(CMAKE_${lang}_RANLIB "" CACHE FILEPATH "")
