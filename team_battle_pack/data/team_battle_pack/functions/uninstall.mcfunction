### Team Battle Pack - Pack Uninstaller
### This function is designed to run once, when the pack is unintstalled, to de-allocate all objects used

## Remove all custom players
# Timer Players
scoreboard players reset sfx tbp_timer
scoreboard players reset nexus tbp_timer
# Schedule Players
scoreboard players reset sfx tbp_schedule
scoreboard players reset nexus tbp_schedule
# Team Players
scoreboard players reset next_team tbp_team
# Core Counter Players
scoreboard players reset total_removed_cores tbp_num_missing
# Nexus Timer Players
scoreboard players reset nexus_create tbp_timer
# Nexus Schedule Players
scoreboard players reset nexus_create tbp_schedule



## Remove necessary scoreboard objectives
# Scoreboard value to keep track of time (in ticks)
scoreboard objectives remove tbp_timer
# Scoreboard value to keep track of maximum time (in ticks)
scoreboard objectives remove tbp_schedule
# Scoreboard value to keep track of teams
scoreboard objectives remove tbp_team
# Scoreboard value to keep track of item colors
scoreboard objectives remove tbp_color
# Scoreboard value to keep track of captured flags
scoreboard objectives remove tbp_core_total
# Scoreboard value to keep track of whether a flag has been stolen
scoreboard objectives remove tbp_core_removed
# Scoreboard value to keep track of global total number of missing cores
scoreboard objectives remove tbp_num_removed
# Scoreboard value to keep track of previous number of missing cores
scoreboard objectives remove tbp_prev_removed
# Scoreboard value to keep track of total number of list rotations
scoreboard objectives remove tbp_num_rotated
# Scoreboard value to keep track of core holder deaths
scoreboard objectives remove tbp_holder_death
# Scoreboard value to keep track of dropped glowstone dust (nexus creation)
scoreboard objectives remove tbp_glowdust_use
# Scoreboard value to keep track of dropped name tags (nexus renaming)
scoreboard objectives remove tbp_nametag_use
# Scoreboard Value to keep track of dropped dyes (nexus coloring)
scoreboard objectives remove tbp_red_use
scoreboard objectives remove tbp_orange_use
scoreboard objectives remove tbp_yellow_use
scoreboard objectives remove tbp_green_use
scoreboard objectives remove tbp_lime_use
scoreboard objectives remove tbp_cyan_use
scoreboard objectives remove tbp_blue_use
scoreboard objectives remove tbp_lblue_use
scoreboard objectives remove tbp_purple_use
scoreboard objectives remove tbp_magenta_use
scoreboard objectives remove tbp_pink_use
scoreboard objectives remove tbp_white_use
scoreboard objectives remove tbp_lgray_use
scoreboard objectives remove tbp_gray_use
scoreboard objectives remove tbp_black_use
scoreboard objectives remove tbp_brown_use
# Scoreboard value to keep track of dropped papers (nexus coloring)
#scoreboard objectives remove tbp_paper_use
# Scoreboard value to keep track of dropped gold nuggets (nexus attunement)
scoreboard objectives remove tbp_gnugget_use



## Signal that the pack was uninstalled
data remove storage team_battle_pack missing_core
data remove storage team_battle_pack installed
tellraw @a ["",{"text":"The "},{"text":"Team Battle Pack","color":"gold"},{"text":" has been successfully "},{"text":"uninstalled","color":"red"}]