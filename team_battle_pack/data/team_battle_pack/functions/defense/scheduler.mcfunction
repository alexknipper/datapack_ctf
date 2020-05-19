### Team battle Pack - Defense Scheduler
### This function serves to coordinate the execution of all defense-related functions

## Increment the necessary timers
# Timer to control ranged turrets
# Timer to control melee turrets
# Timer to control status turrets



## Defense Crafter
# Creation
execute as @a[scores={tbp_rtorch_use=1..},tag=!core_holder] at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team if score @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_num_craft_d < limit tbp_num_crafter as @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},distance=..5,limit=1,sort=nearest] at @s if block ~ ~-1 ~ minecraft:blast_furnace if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] run function team_battle_pack:defense/make_crafter
# Destruction



## Item Crafting



## Effect Fields



## Turrets