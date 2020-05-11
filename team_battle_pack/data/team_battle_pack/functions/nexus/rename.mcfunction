### Team Battle Pack - Nexus Renaming
### This function is designed to rename an active Nexus when a person of the same team as the nexus drops a name tag on it

## Create a sign below the world to perform string concatenation
execute at @s run setblock ~ ~2 ~ minecraft:oak_sign



## Tag the item to show display command
tag @s add rename_tag



## Add the name to the first row of the sign
execute at @s run data modify block ~ ~2 ~ Text1 set value '[{"nbt":"Item.tag.display.Name","entity":"@e[type=minecraft:item,tag=rename_tag,distance=..1,limit=1,sort=nearest]","interpret":true},{"text":" Nexus"}]'



## Set the nexus' name to the sign's text
execute at @s run data modify entity @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] CustomName set from block ~ ~2 ~ Text1



## Change the sign back to bedrock
#execute at @s run setblock ~ 0 ~ minecraft:bedrock



## Reset all name tag usage scores in a 50 block radius
execute at @s run scoreboard players reset @a[distance=..50] tbp_nametag_use



## Kill the name tag that called the function
kill @s