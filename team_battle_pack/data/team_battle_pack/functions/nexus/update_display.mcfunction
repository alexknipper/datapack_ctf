### Team Battle Pack - Update Nexus Display
### This function, when run as a nexus, will update the capture counter with the most current score in the scoreboard

## Spawn a sign below the Nexus, under the world
execute at @s run setblock ~ 0 ~ minecraft:oak_sign



## Store the resultant text in 'Text2' of the sign
execute at @s run data modify block ~ 0 ~ Text2 set value '[{"text":"Cores Captured: "},{"score":{"name":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]","objective":"tbp_core_total"}}]'



## Kill the old capture_indicator
execute at @s run kill @e[type=minecraft:armor_stand,tag=capture_indicator,distance=..1,limit=1,sort=nearest]



## Summon a new capture_indicator
execute at @s run summon minecraft:armor_stand ~ ~-.25 ~ {CustomName:"{\"text\":\"Cores Captured: 0\"}",Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["capture_indicator"]}



## Change the name of the capture indicator
execute at @s run data modify entity @e[type=minecraft:armor_stand,tag=capture_indicator,distance=..1,limit=1,sort=nearest] CustomName set from block ~ 0 ~ Text2



## Replace the sign with bedrock
execute at @s run setblock ~ 0 ~ minecraft:bedrock