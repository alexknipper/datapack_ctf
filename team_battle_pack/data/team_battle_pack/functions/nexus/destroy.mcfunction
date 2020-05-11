### Team Battle Pack - Nexus Destruction
### This function destroys nexus that do not have the necessary structure (Mainly used when uninstalling the pack)

## Remove all players from the nexus' team
execute at @s as @a if score @s tbp_team = @e[type=minecraft:end_crystal,distance=..1,tag=nexus,tag=destroy_nexus,limit=1] tbp_team run scoreboard players reset @s tbp_team



## Kill the score indicator and 'removed core' indicator
execute at @s run kill @e[type=minecraft:armor_stand,distance=..1]



## Remove the flag from the flag carrier, if there is one



## Kill the nexus
kill @s