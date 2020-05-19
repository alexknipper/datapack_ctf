### Team Battle Pack - Offense Crafter Destruction Marker
### This function decides if an offense crafter needs to be destroyed or not

## Tag the crafter to be destroyed
tag @s add destroy_atk_crafter



## If the crafter still has the proper things, remove the tag
execute at @s if block ~ ~1 ~ minecraft:smoker if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team run tag @s remove destroy_atk_crafter



## If the tag is still there, destroy the crafter
execute as @s[tag=destroy_atk_crafter] run function team_battle_pack:offense/destroy