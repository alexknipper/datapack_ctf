### Team Battle Pack - Capture Core
### This function is designed to run whenever a core gets captured

## Increment the nexus' 'tbp_core_total' score
execute at @s as @e[type=minecraft:end_crystal,tag=nexus,distance=..3,limit=1] run scoreboard players add @s tbp_core_total 1



## Update the display
execute at @s as @e[type=minecraft:end_crystal,tag=nexus,distance=..3,limit=1] at @s run function team_battle_pack:nexus/update_display



## SFX



## Announce the capture to chat



## Tag the executing player with 'captured_flag' to trigger the core return