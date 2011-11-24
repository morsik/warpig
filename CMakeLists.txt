cmake_minimum_required(VERSION 2.8)

#set(CMAKE_C_COMPILER   "clang")
#set(CMAKE_CXX_COMPILER "clang++")

macro(genname OBJNAME)
	if    (CMAKE_BUILD_TYPE STREQUAL "linux-x86")
		set(LIBNAME "${OBJNAME}-linux-x86")
		set(ARCHSUFFIX .mp.i386.so)

		set(CMAKE_C_FLAGS   "-march=i686 -m32")
		set(CMAKE_CXX_FLAGS "-march=i686 -m32")

	elseif (CMAKE_BUILD_TYPE STREQUAL "linux-x86_64")
		set(LIBNAME "${OBJNAME}-linux-x86_64")
		set(ARCHSUFFIX .mp.x86_64.so)

	elseif (CMAKE_BUILD_TYPE STREQUAL "windows-x86")
		set(LIBNAME "${OBJNAME}-windows-x86")
		set(ARCHSUFFIX _mp_x86.dll)
	
	elseif (CMAKE_BUILD_TYPE STREQUAL "windows-x86-cross")
		set(LIBNAME "${OBJNAME}-windows-x86")
		set(ARCHSUFFIX _mp_x86.dll)

#		set(CMAKE_C_FLAGS   "-w")
#		set(CMAKE_CXX_FLAGS "-w")

		set(CMAKE_SHARED_LIBRARY_C_FLAGS   "")
		set(CMAKE_SHARED_LIBRARY_CXX_FLAGS "")

		set(CMAKE_C_COMPILER   i586-mingw32msvc-gcc)
		set(CMAKE_CXX_COMPILER i586-mingw32msvc-g++)
		set(CMAKE_FIND_ROOT_PATH /usr/i586-mingw32msvc/)
		set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

		set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
		set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

	else ()
		message(FATAL_ERROR "Please specify CMAKE_BUILD_TYPE
Allowed values:
- linux-x86
- linux-x86_64
- windows-x86 (windows only)")
		return()
	endif ()
endmacro(genname)

set(CMAKE_BUILD_DIR obj)

project(warpig)

set(PROJECT_SOURCE_DIR src)
set(LIBRARY_OUTPUT_PATH ../../build/) #path relative to mods

add_subdirectory(src/game)
add_subdirectory(src/cgame)
add_subdirectory(src/ui)
