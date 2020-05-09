### Team Battle Pack - Pack Initializer
### This function is designed to run once, when the pack is intstalled for the very first time

## Create necessary scoreboard objectives
# Scoreboard value to keep track of time (in ticks)
scoreboard objectives add tbp_timer dummy
# Scoreboard value to keep track of maximum time (in ticks)
scoreboard objectives add tbp_schedule dummy
# Scoreboard value to keep track of teams
scoreboard objectives add tbp_team dummy
# Scoreboard value to keep track of dropped glowstone dust (nexus creation)
scoreboard objectives add tbp_glowdust_use minecraft.dropped:minecraft.glowstone_dust
# Scoreboard value to keep track of dropped name tags (nexus renaming)
scoreboard objectives add tbp_nametag_use minecraft.dropped:minecraft.name_tag
# Scoreboard Value to keep track of dropped dyes (nexus dyeing)
scoreboard objectives add tbp_red_use minecraft.dropped:minecraft.red_dye
scoreboard objectives add tbp_orange_use minecraft.dropped:minecraft.orange_dye
scoreboard objectives add tbp_yellow_use minecraft.dropped:minecraft.yellow_dye
scoreboard objectives add tbp_green_use minecraft.dropped:minecraft.green_dye
scoreboard objectives add tbp_lime_use minecraft.dropped:minecraft.lime_dye
scoreboard objectives add tbp_cyan_use minecraft.dropped:minecraft.cyan_dye
scoreboard objectives add tbp_blue_use minecraft.dropped:minecraft.blue_dye
scoreboard objectives add tbp_lblue_use minecraft.dropped:minecraft.light_blue_dye
scoreboard objectives add tbp_purple_use minecraft.dropped:minecraft.purple_dye
scoreboard objectives add tbp_magenta_use minecraft.dropped:minecraft.magenta_dye
scoreboard objectives add tbp_white_use minecraft.dropped:minecraft.white_dye
scoreboard objectives add tbp_lgray_use minecraft.dropped:minecraft.light_gray_dye
scoreboard objectives add tbp_gray_use minecraft.dropped:minecraft.gray_dye
scoreboard objectives add tbp_black_use minecraft.dropped:minecraft.black_dye



## Create schedules for each timer
# Activation interval for the special effects scheduler
scoreboard players set sfx tbp_schedule 2
# Activation interval for the nexus scheduler
scoreboard players set nexus tbp_schedule 5

## Create schedules for each timer (Nexus Scheduler)
# Activation interval for nexus creation
scoreboard players set nexus_create tbp_schedule 2



## Create handler for team IDs
scoreboard players set next_team tbp_team 1



## Create storage for the pack, and signal that the pack is installed
data modify storage team_battle_pack installed set value 1
tellraw @a ["",{"text":"The "},{"text":"Team Battle Pack","color":"gold"},{"text":" has been successfully "},{"text":"installed","color":"green"}]