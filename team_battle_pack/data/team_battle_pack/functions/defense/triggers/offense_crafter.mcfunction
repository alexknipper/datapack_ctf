### Team Battle Pack - Offense Crafter Count
### This function, when run as/at a player, counts the total number of offense crafters

## Tell the count
tellraw @s ["",{"selector":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]"},{"text":" has "},{"score":{"name":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]","objective":"tbp_num_craft_o"}},{"text":" Offense Crafters."}]



## Reset the executing player's score
scoreboard players reset @s tbp_atk_count