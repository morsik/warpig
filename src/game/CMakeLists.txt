cmake_minimum_required(VERSION 2.8)

set(OBJNAME qagame)

genname(${OBJNAME})

INCLUDE_DIRECTORIES(. ../omnibot/Common ../omnibot/ET)

add_library(${LIBNAME} MODULE
bg_animation bg_animgroup bg_campaign bg_character bg_classes bg_misc bg_pmove bg_slidemove bg_sscript bg_stats bg_tracemap g_active g_alarm g_antilag g_bot g_buddy_list g_character g_client g_cmds g_cmds_ext g_combat g_config g_fireteams g_items g_match g_mem g_misc g_missile g_mover g_multiview g_props g_referee g_save g_script g_script_actions g_session g_spawn g_stats g_sv_entities g_svcmds g_syscalls g_systemmsg g_target g_team g_teammapdata g_trigger g_utils g_vote g_weapon g_main
g_etbot_interface
../omnibot/Common/BotLoadLibrary.cpp
../shared/q_shared ../shared/q_math
../botai/ai_cmd ../botai/ai_dmgoal_mp ../botai/ai_dmnet_mp ../botai/ai_dmq3 ../botai/ai_main ../botai/ai_script ../botai/ai_script_actions ../botai/ai_team
)

add_definitions(-DGAMEDLL)
add_definitions(-DNO_BOT_SUPPORT)

set_target_properties(${LIBNAME} PROPERTIES PREFIX "")
set_target_properties(${LIBNAME} PROPERTIES SUFFIX "")
set_target_properties(${LIBNAME} PROPERTIES OUTPUT_NAME ${OBJNAME}${ARCHSUFFIX})
