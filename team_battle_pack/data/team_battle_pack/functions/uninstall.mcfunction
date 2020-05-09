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
scoreboard objectives remove tbp_white_use
scoreboard objectives remove tbp_lgray_use
scoreboard objectives remove tbp_gray_use
scoreboard objectives remove tbp_black_use
# Scoreboard value to keep track of dropped papers (nexus coloring)
#scoreboard objectives remove tbp_paper_use



## Signal that the pack was uninstalled
data remove storage team_battle_pack installed
tellraw @a ["",{"text":"The "},{"text":"Team Battle Pack","color":"gold"},{"text":" has been successfully "},{"text":"uninstalled","color":"red"}]