### Team Battle Pack - Nexus Color Red
### This function is designed to color a nexus and all related items red

## Set the color score for all items affiliated with the team
execute at @s as @e[type=minecraft:end_crystal,type=minecraft:armor_stand,distance=..100] if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..2,limit=1] run scoreboard players set @s tbp_color 1



## SFX
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 100 1.75 1



## Kill the item that called this function
kill @s