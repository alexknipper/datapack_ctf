### Team battle Pack - Defense Scheduler
### This function serves to coordinate the execution of all defense-related functions

## Increment the necessary timers
# Timer to control ranged turrets
scoreboard players add @e[type=minecraft:armor_stand,tag=ranged_turret] tbp_def_timer 1
# Timer to control melee turrets
scoreboard players add @e[type=minecraft:armor_stand,tag=melee_turret] tbp_def_timer 1
# Timer to control status turrets
scoreboard players add @e[type=minecraft:armor_stand,tag=status_turret] tbp_def_timer 1



## Defense Crafter
# Creation
execute as @a[scores={tbp_rtorch_use=1..},tag=!core_holder] at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team if score @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_num_craft_d < limit tbp_num_craft_d as @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"},OnGround:1b},distance=..5,limit=1,sort=nearest] at @s unless entity @e[type=minecraft:armor_stand,tag=def_crafter,distance=..1.65] if block ~ ~-.15 ~ minecraft:blast_furnace if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..98,limit=1] run function team_battle_pack:defense/make_crafter
# Destruction
execute as @e[type=minecraft:armor_stand,tag=def_crafter,tag=!new_def_crafter] run function team_battle_pack:defense/mark_for_destruction



## Item Crafting
execute as @e[type=minecraft:armor_stand,tag=def_crafter] at @s run function team_battle_pack:defense/craft_items



## Block Destruction
# Ranged Turrets
execute as @e[type=minecraft:armor_stand,tag=ranged_turret] at @s run function team_battle_pack:defense/destruction/mark_ranged
# Melee Turrets
execute as @e[type=minecraft:armor_stand,tag=melee_turret] at @s run function team_battle_pack:defense/destruction/mark_melee
# Status Turrets
execute as @e[type=minecraft:armor_stand,tag=status_turret] at @s run function team_battle_pack:defense/destruction/mark_status



## Block Crafting
# Effect Field
execute as @a[scores={tbp_nstar_use=1..}] at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'{"text":"Effect Field Core","color":"aqua"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}},OnGround:1b},distance=..5,limit=1,sort=nearest] at @s unless entity @e[type=minecraft:armor_stand,tag=effect_field,distance=..2,limit=1] if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..3,limit=1] run function team_battle_pack:defense/use/effect_field
# Ranged Turrets
execute as @a[scores={tbp_arrow_use=1..}] at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team if score @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_num_turret_r < limit tbp_num_turret_r as @e[type=minecraft:item,nbt={Item:{id:"minecraft:arrow",tag:{display:{Name:'{"text":"Ranged Turret Kit","color":"yellow"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}},OnGround:1b},distance=..5,limit=1,sort=nearest] at @s unless entity @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..30] if block ~ ~-.15 ~ minecraft:smooth_stone_slab if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..98,limit=1] run function team_battle_pack:defense/use/ranged_turret
# Ranged Turret Upgrade
execute as @a[scores={tbp_fcharge_use=1..}] at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team as @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge",tag:{display:{Name:'{"text":"Ranged Turret Upgrade Module","color":"gold"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}},OnGround:1b},distance=..5,limit=1,sort=nearest] at @s at @e[type=minecraft:armor_stand,tag=ranged_turret,tag=!upgraded,distance=..2,limit=1,sort=nearest] run function team_battle_pack:defense/use/ranged_turret_upgrade
# Melee Turrets
execute as @a[scores={tbp_iringot_use=1..}] at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team if score @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_num_turret_m < limit tbp_num_turret_m as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",tag:{display:{Name:'{"text":"Melee Turret Kit","color":"red"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}},OnGround:1b},distance=..5,limit=1,sort=nearest] at @s unless entity @e[type=minecraft:armor_stand,tag=melee_turret,distance=..22.5] if block ~ ~-.15 ~ minecraft:smooth_stone_slab if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..98,limit=1] run function team_battle_pack:defense/use/melee_turret
# Status Turrets
execute as @a[scores={tbp_blazrod_use=1..}] at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team if score @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_num_turret_s < limit tbp_num_turret_s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:blaze_rod",tag:{HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}},OnGround:1b},distance=..5,limit=1,sort=nearest] at @s unless entity @e[type=minecraft:armor_stand,tag=status_turret,distance=..35] if block ~ ~-.15 ~ minecraft:smooth_stone_slab if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..98,limit=1] run function team_battle_pack:defense/use/status_turret



## Effect Fields
execute as @e[type=minecraft:armor_stand,tag=effect_field] at @s run function team_battle_pack:defense/effects/effect_field



## Turret Firing
# Ranged
execute as @a at @s unless score @s tbp_team = @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..25,limit=1,sort=nearest] tbp_team unless score @s tbp_team matches 0 run tag @s add enemy
execute as @e[type=minecraft:armor_stand,tag=ranged_turret] at @s run tp @s ~ ~ ~ facing entity @a[tag=enemy,distance=..25,limit=1,sort=nearest]
execute as @e[type=minecraft:armor_stand,tag=ranged_turret] at @s if score @s tbp_def_timer >= ranged tbp_def_schdul run function team_battle_pack:defense/effects/ranged_turret
# Melee
execute as @a at @s unless score @s tbp_team = @e[type=minecraft:armor_stand,tag=melee_turret,distance=..7.5,limit=1,sort=nearest] tbp_team unless score @s tbp_team matches 0 run tag @s add enemy
execute as @e[type=minecraft:armor_stand,tag=melee_turret] at @s if score @s tbp_def_timer >= melee tbp_def_schdul run function team_battle_pack:defense/effects/melee_turret
# Status
execute as @a at @s unless score @s tbp_team = @e[type=minecraft:armor_stand,tag=status_turret,distance=..12.5,limit=1,sort=nearest] tbp_team unless score @s tbp_team matches 0 run tag @s add enemy
execute as @e[type=minecraft:armor_stand,tag=status_turret] at @s if score @s tbp_def_timer >= status tbp_def_schdul run function team_battle_pack:defense/effects/status_turret



## Wipe out the 'enemy' tag on all players
tag @a[tag=enemy] remove enemy



## Trigger Objectives
# Count Offense Crafters
scoreboard players enable @a tbp_atk_count
execute as @a[scores={tbp_atk_count=1..}] at @s run function team_battle_pack:defense/triggers/offense_crafter
# Count Defense Crafters
scoreboard players enable @a tbp_def_count
execute as @a[scores={tbp_def_count=1..}] at @s run function team_battle_pack:defense/triggers/defense_crafter
# Count Ranged Turrets
scoreboard players enable @a tbp_ranged_count
execute as @a[scores={tbp_ranged_count=1..}] at @s run function team_battle_pack:defense/triggers/ranged_turret
# Count Melee Turrets
scoreboard players enable @a tbp_melee_count
execute as @a[scores={tbp_melee_count=1..}] at @s run function team_battle_pack:defense/triggers/melee_turret
# Count Status Turrets
scoreboard players enable @a tbp_status_count
execute as @a[scores={tbp_status_count=1..}] at @s run function team_battle_pack:defense/triggers/status_turret