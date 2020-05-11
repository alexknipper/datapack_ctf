### Team Battle Pack - Nexus Destruction Marker
### This function decides if a nexus needs to be destroyed or not

## Tag the nexus to be destroyed
tag @s add destroy_nexus



## If the nexus still has the proper structure, remove the tag
execute at @s if block ~ ~1 ~ minecraft:end_rod if block ~ ~ ~ minecraft:smooth_stone if entity @e[type=minecraft:armor_stand,distance=..1,tag=capture_indicator] run tag @s remove destroy_nexus



## If the tag is still there, destroy the nexus
execute as @s[tag=destroy_nexus] run function team_battle_pack:nexus/destroy