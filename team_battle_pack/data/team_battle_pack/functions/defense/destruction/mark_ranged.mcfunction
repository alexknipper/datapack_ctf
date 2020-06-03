### Team Battle Pack - Ranged Turret Destruction Marker
### This function decides if a ranged turret needs to be destroyed or not

## Tag the turret to be destroyed
tag @s add destroy_r_turret



## If the turret still has the proper things, remove the tag
execute at @s if block ~ ~2 ~ minecraft:smooth_stone_slab if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team run tag @s remove destroy_def_crafter



## If the tag is still there, destroy the turret
execute as @s[tag=destroy_r_turret] run function team_battle_pack:defense/destruction/destroy_ranged