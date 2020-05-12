### Team Battle Pack - Nexus Color Light Gray
### This function is designed to color a nexus and all related items light gray

## Set the color score for the nexus
execute at @s as @e[type=minecraft:end_crystal,distance=..100] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] tbp_team run scoreboard players set @s tbp_color 13



## Set the color score for all affiliated items
execute at @s as @e[type=minecraft:armor_stand,distance=..100] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] tbp_team run scoreboard players set @s tbp_color 13



## SFX
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 100 1.75 1



## Reset all players' red dye usage scores
execute at @s as @a[scores={tbp_lgray_use=1..},distance=..100] run scoreboard players reset @s tbp_lgray_use



## Kill the item that called this function
kill @s