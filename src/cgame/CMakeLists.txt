cmake_minimum_required(VERSION 2.8)

set(OBJNAME cgame)

genname(${OBJNAME})

file(GLOB fgame ../bg_*.c)
file(GLOB fcgame *.c)

add_library(${LIBNAME} SHARED
cg_atmospheric cg_character cg_commandmap cg_consolecmds cg_debriefing cg_draw cg_drawtools cg_effects cg_ents cg_event cg_fireteamoverlay cg_fireteams cg_flamethrower cg_info cg_limbopanel cg_loadpanel cg_localents cg_main cg_marks cg_missionbriefing cg_multiview cg_newDraw cg_particles cg_players cg_playerstate cg_polybus cg_popupmessages cg_predict cg_scoreboard cg_servercmds cg_snapshot cg_sound cg_spawn cg_statsranksmedals cg_syscalls cg_trails cg_view cg_weapons cg_window
../game/bg_animation ../game/bg_animgroup ../game/bg_campaign ../game/bg_character ../game/bg_classes ../game/bg_misc ../game/bg_pmove ../game/bg_slidemove ../game/bg_sscript ../game/bg_stats ../game/bg_tracemap
../ui/ui_shared
../shared/q_shared ../shared/q_math
)
#add_library(${LIBNAME} cg_panelhandling)

add_definitions(-DCGAMEDLL)

set_target_properties(${LIBNAME} PROPERTIES PREFIX "")
set_target_properties(${LIBNAME} PROPERTIES SUFFIX "")
set_target_properties(${LIBNAME} PROPERTIES OUTPUT_NAME ${OBJNAME}${ARCHSUFFIX})
