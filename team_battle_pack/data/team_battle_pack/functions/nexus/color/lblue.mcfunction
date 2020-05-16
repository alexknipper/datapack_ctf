### Team Battle Pack - Nexus Color Light Blue
### This function is designed to color a nexus and all related items light blue

## Set the color score for the nexus
execute at @s as @e[type=minecraft:end_crystal,distance=..100] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] tbp_team run scoreboard players set @s tbp_color 8



## Set the color score for all affiliated items
execute at @s as @e[type=minecraft:armor_stand,distance=..100] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] tbp_team run scoreboard players set @s tbp_color 8



## SFX
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..100] ~ ~ ~ 100 1.75 1



## Grant the advancement to all players in a 5-block radius
execute at @s run advancement grant @a[distance=..5] only team_battle_pack:nexus/recolor



## Reset all players' light blue dye usage scores
execute at @s as @a[scores={tbp_lblue_use=1..},distance=..100] run scoreboard players reset @s tbp_lblue_use



## Kill the item that called this function
kill @s