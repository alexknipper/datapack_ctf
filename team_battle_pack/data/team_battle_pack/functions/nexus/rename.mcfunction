### Team Battle Pack - Nexus Renaming
### This function is designed to rename an active Nexus when a person of the same team as the nexus drops a name tag on it

## Create a sign below the world to perform string concatenation
execute at @s run setblock ~ 0 ~ minecraft:oak_sign



## Add the name to the first row of the sign
execute at @s run data modify block ~ 0 ~ Text1 set value '[{"nbt":"Item.tag.display.Name","entity":"@s","interpret":true},{"text":" Nexus"}]'



## //hi



## Change the sign back to bedrock
execute at @s run setblock ~ 0 ~ minecraft:bedrock



## Kill the name tag that called the function
kill @s