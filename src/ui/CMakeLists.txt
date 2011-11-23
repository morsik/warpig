cmake_minimum_required(VERSION 2.8)

set(OBJNAME ui)

genname(${OBJNAME})

add_library(${LIBNAME} SHARED
ui_atoms ui_gameinfo ui_loadpanel ui_main ui_players ui_shared ui_syscalls ui_util
../game/bg_campaign ../game/bg_classes ../game/bg_misc
../shared/q_math ../shared/q_shared
)

#add_definitions(-DGAMEDLL)

set_target_properties(${LIBNAME} PROPERTIES PREFIX "")
set_target_properties(${LIBNAME} PROPERTIES SUFFIX "")
set_target_properties(${LIBNAME} PROPERTIES OUTPUT_NAME ${OBJNAME}${ARCHSUFFIX})
