### Team Battle Pack - Nexus Color Brown
### This function is designed to color a nexus and all related items brown

## Set the color score for the nexus
execute at @s as @e[type=minecraft:end_crystal,distance=..100] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] tbp_team run scoreboard players set @s tbp_color 16



## Set the color score for all affiliated items
execute at @s as @e[type=minecraft:armor_stand,distance=..100] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] tbp_team run scoreboard players set @s tbp_color 16



## SFX
execute at @s run playsound minecraft:block.beacon.power_select block @a[distance=..100] ~ ~ ~ 100 1.75 1



## Grant the advancement to all players in a 5-block radius
execute at @s run advancement grant @a[distance=..5] only team_battle_pack:nexus/recolor



## Reset all players' brown dye usage scores
execute at @s as @a[scores={tbp_brown_use=1..},distance=..100] run scoreboard players reset @s tbp_brown_use



## Kill the item that called this function
kill @s