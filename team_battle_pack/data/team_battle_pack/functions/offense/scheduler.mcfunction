### Team battle Pack - Offense Scheduler
### This function serves to coordinate the execution of all offense-related functions

## Offense Crafter
# Creation
execute as @a[scores={tbp_rtorch_use=1..},tag=!core_holder] at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team if score @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_num_craft_o < limit tbp_num_craft_o as @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"},OnGround:1b},distance=..5,limit=1,sort=nearest] at @s unless entity @e[type=minecraft:armor_stand,tag=atk_crafter,distance=..1.65] if block ~ ~-.15 ~ minecraft:smoker if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..98,limit=1] run function team_battle_pack:offense/make_crafter
# Destruction
execute as @e[type=minecraft:armor_stand,tag=atk_crafter,tag=!new_atk_crafter] run function team_battle_pack:offense/mark_for_destruction



## Item Crafting
execute as @e[type=minecraft:armor_stand,tag=atk_crafter] at @s run function team_battle_pack:offense/craft_items



## Item Use
# On Ground
execute as @a[scores={tbp_firestar_use=1..}] at @s anchored eyes at @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}},OnGround:1b},distance=..7.5,limit=1,sort=nearest] run function team_battle_pack:offense/use_items
# 2 Blocks Away
execute as @a[scores={tbp_firestar_use=1..}] at @s anchored eyes at @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=2..7.5,limit=1,sort=nearest] run function team_battle_pack:offense/use_items



## Area Effect Clouds
# Strength
execute as @e[type=minecraft:area_effect_cloud,tag=str_fld] at @s run function team_battle_pack:offense/effects/strength
# Regeneration
execute as @e[type=minecraft:area_effect_cloud,tag=regen_fld] at @s run function team_battle_pack:offense/effects/regeneration
# Fire Resistance
execute as @e[type=minecraft:area_effect_cloud,tag=fir_res_fld] at @s run function team_battle_pack:offense/effects/fire_resistance
# Jump Boost
execute as @e[type=minecraft:area_effect_cloud,tag=jmp_fld] at @s run function team_battle_pack:offense/effects/jump_boost
# Swiftness
execute as @e[type=minecraft:area_effect_cloud,tag=swft_fld] at @s run function team_battle_pack:offense/effects/swiftness
# Water Breathing
execute as @e[type=minecraft:area_effect_cloud,tag=wtr_brth_fld] at @s run function team_battle_pack:offense/effects/water_breathing
# Slow Falling
execute as @e[type=minecraft:area_effect_cloud,tag=slw_fall_fld] at @s run function team_battle_pack:offense/effects/slow_falling
# Night Vision
execute as @e[type=minecraft:area_effect_cloud,tag=ngt_vis_fld] at @s run function team_battle_pack:offense/effects/night_vision
# Levitation
execute as @e[type=minecraft:area_effect_cloud,tag=lev_fld] at @s run function team_battle_pack:offense/effects/levitation
# Invisibility 
execute as @e[type=minecraft:area_effect_cloud,tag=invis_fld] at @s run function team_battle_pack:offense/effects/invisibility