### Team Battle Pack - Nexus Scheduler
### This function is designed to run every time the scheduler calls it, to schedule all Nexus-based operations and modifications

## Nexus Creation
execute as @a[scores={tbp_glowdust_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:end_crystal,tag=nexus,distance=..175] as @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..5,limit=1,sort=nearest] at @s if block ~ ~ ~ minecraft:end_rod if block ~ ~-1 ~ minecraft:smooth_stone run function team_battle_pack:nexus/create



## Nexus Destruction
execute as @e[type=minecraft:end_crystal,tag=nexus] run function team_battle_pack:nexus/mark_for_destruction



## Nexus Renaming
execute as @a[scores={tbp_nametag_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:name_tag"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/rename



## Nexus Coloring
# Red
execute as @a[scores={tbp_red_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:red_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/red
# Orange
execute as @a[scores={tbp_orange_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:orange_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/orange
# Yellow
execute as @a[scores={tbp_yellow_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:yellow_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/yellow
# Green
execute as @a[scores={tbp_green_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:green_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/green
# Lime
execute as @a[scores={tbp_lime_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/lime
# Cyan
execute as @a[scores={tbp_cyan_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:cyan_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/cyan
# Blue
execute as @a[scores={tbp_blue_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:blue_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/blue
# Light Blue
execute as @a[scores={tbp_lblue_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:light_blue_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/lblue
# Purple
execute as @a[scores={tbp_purple_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:purple_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/purple
# Magenta
execute as @a[scores={tbp_magenta_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:magenta_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/magenta
# Pink
execute as @a[scores={tbp_pink_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:pink_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/pink
# White
execute as @a[scores={tbp_white_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:white_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/white
# Light Gray
execute as @a[scores={tbp_lgray_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:light_gray_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/lgray
# Gray
execute as @a[scores={tbp_gray_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:gray_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/gray
# Black
execute as @a[scores={tbp_black_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:black_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/black
# Brown
execute as @a[scores={tbp_brown_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:brown_dye"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/color/brown



## Nexus Attunement
execute as @a[scores={tbp_gnugget_use=1..},tag=!core_holder] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..7,limit=1] unless score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..5,limit=1] tbp_team as @e[type=item,nbt={Item:{id:"minecraft:gold_nugget"}},distance=..5,limit=1,sort=nearest] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run function team_battle_pack:nexus/attune



## Nexus Theft
execute as @a[tag=!core_holder] at @s as @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] at @s unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..1,limit=1] as @p[distance=..2] unless score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] tbp_team run function team_battle_pack:nexus/steal_core



## Nexus Captures
execute as @a[tag=core_holder] at @s if entity @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] unless entity @e[type=minecraft:armor_stand,tag=theft_indicator,distance=..3,limit=1] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] tbp_team run function team_battle_pack:nexus/capture_core



## Nexus Unlocking
function team_battle_pack:nexus/rotate_core_list