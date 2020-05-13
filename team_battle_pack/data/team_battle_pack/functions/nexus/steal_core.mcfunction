### Team battle Pack - Nexus Core Theft
### This function is designed to initiate the theft of a nexus' core, when triggered

## Spawn the 'theft_indicator' armor stand
execute at @s as @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] at @s run summon minecraft:armor_stand ~ ~.3 ~ {CustomName:"{\"text\":\"CORE REMOVED\",\"color\":\"dark_red\"}",Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["theft_indicator"]}



## Tag the theft_indicator with a 'core_missing' score of 1
execute at @s as @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..5,limit=1] run scoreboard players set @s tbp_core_removed 1



## Add the team number to the global storage
data modify storage team_battle_pack missing_core append value {team:0}
execute at @s as @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] store result storage team_battle_pack missing_core[{team:0}].team int 1 run scoreboard players get @s tbp_team



## Increment the global removed core counter
scoreboard players add total_removed_cores tbp_num_removed 1



## SFX
execute at @s at @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] run particle minecraft:witch ~ ~ ~ 1 1 1 .01 50 force
execute at @s at @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] run playsound minecraft:entity.wither.spawn block @a[distance=..100] ~ ~ ~ 100 1.5 1



## Announce the theft to chat
execute at @s run tellraw @a ["",{"nbt":"CustomName","entity":"@e[type=end_crystal,tag=nexus,distance=..5,limit=1]","interpret":true},{"text":"' "},{"text":"core","color":"gold"},{"text":" was "},{"text":"taken","color":"red"},{"text":" by "},{"selector":"@s"},{"text":"!"}]



## Make the executing player a flag carrier
# Tag them with the 'core_holder' tag
tag @s add core_holder
# Add the nexus' team number to the player
execute at @s run scoreboard players operation @s tbp_core_removed = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team