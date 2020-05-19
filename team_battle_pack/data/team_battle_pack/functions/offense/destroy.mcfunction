### Team Battle Pack - Offense Crafter Destruction
### This function de-allocates offense crafters that no longer meet existence criteria

## Decrement the nexus' entity counter
execute at @s if score @s tbp_team = @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_team run scoreboard players remove @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] tbp_num_craft_o 1



## Kill the executing armor stand
kill @s