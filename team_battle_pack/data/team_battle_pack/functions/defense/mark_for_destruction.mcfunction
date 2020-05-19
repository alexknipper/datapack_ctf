### Team Battle Pack - Defense Crafter Destruction Marker
### This function decides if a defense crafter needs to be destroyed or not

## Tag the crafter to be destroyed
tag @s add destroy_def_crafter



## If the crafter still has the proper things, remove the tag
execute at @s if block ~ ~1 ~ minecraft:blast_furnace if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team run tag @s remove destroy_def_crafter



## If the tag is still there, destroy the crafter
execute as @s[tag=destroy_def_crafter] run function team_battle_pack:defense/destroy