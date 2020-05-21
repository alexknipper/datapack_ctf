### Team battle Pack - Offense Scheduler
### This function serves to coordinate the execution of all offense-related functions

## Offense Crafter
# Creation
execute as @a[scores={tbp_rtorch_use=1..},tag=!core_holder] at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team if score @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_num_craft_o < limit tbp_num_craft_o as @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},distance=..5,limit=1,sort=nearest] at @s unless entity @e[type=minecraft:armor_stand,tag=atk_crafter,distance=..1.65] if block ~ ~-.15 ~ minecraft:smoker if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..98,limit=1] run function team_battle_pack:offense/make_crafter
# Destruction
execute as @e[type=minecraft:armor_stand,tag=atk_crafter,tag=!new_atk_crafter] run function team_battle_pack:offense/mark_for_destruction