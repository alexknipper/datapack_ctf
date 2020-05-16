### Team Battle Pack - Nexus Attunement
### This function is designed to attune a player to a nexus

## Set the team from the nexus
execute at @s as @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run scoreboard players operation @p[distance=..5] tbp_team = @s tbp_team



## SFX
execute at @s run playsound minecraft:block.bell.resonate master @a[distance=..100] ~ ~ ~ 100 1.5 1



## Grant the advancement
execute at @s run advancement grant @p[distance=..5] only team_battle_pack:nexus/attune



## Signal the attunement to chat
execute at @s run tellraw @a ["",{"selector":"@p[distance=..5]"},{"text":" has "},{"text":"attuned","color":"aqua"},{"text":" to "},{"nbt":"CustomName","entity":"@e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1]","interpret":true},{"text":"."}]



## Reset players' gold nugget usage scores
execute at @s as @a[scores={tbp_gnugget_use=1..},distance=..100] run scoreboard players reset @s tbp_gnugget_use



## Kill the item that called the function
kill @s