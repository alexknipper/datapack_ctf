### Team Battle Pack - Defense Crafter Count
### This function, when run as/at a player, counts the total number of defense crafters

## Tell the count
tellraw @s ["",{"selector":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]"},{"text":" has "},{"score":{"name":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]","objective":"tbp_num_craft_d"}},{"text":" Defense Crafter(s)."}]



## Reset the executing player's score
scoreboard players reset @s tbp_def_count