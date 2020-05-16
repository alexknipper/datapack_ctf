### Team Battle Pack - Nexus Renaming
### This function is designed to rename an active Nexus when a person of the same team as the nexus drops a name tag on it

## Create a sign below the world to perform string concatenation
execute at @s run setblock ~ 0 ~ minecraft:oak_sign



## Tag the item to show display command
tag @s add rename_tag



## Add the name to the first row of the sign
execute at @s run data modify block ~ 0 ~ Text1 set value '[{"nbt":"Item.tag.display.Name","entity":"@e[type=minecraft:item,tag=rename_tag,limit=1,sort=nearest]","interpret":true},{"text":" Nexus"}]'



## Set the nexus' name to the sign's text
execute at @s run data modify entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] CustomName set from block ~ 0 ~ Text1



## SFX
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..100] ~ ~ ~ 100 1.75 1



## Grant the advancement to all players in a 5-block radius
execute at @s run advancement grant @a[distance=..5] only team_battle_pack:nexus/rename



## Change the sign back to bedrock
execute at @s run setblock ~ 0 ~ minecraft:bedrock



## Reset all name tag usage scores in a 50 block radius
execute at @s run scoreboard players reset @a[distance=..100] tbp_nametag_use



## Kill the name tag that called the function
kill @s