### Team Battle Pack - Melee Turret Count
### This function, when run as/at a player, counts the total number of melee turrets

## Tell the count
tellraw @s ["",{"selector":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]"},{"text":" has "},{"score":{"name":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]","objective":"tbp_num_turret_m"}},{"text":" Offense Crafters."}]



## Reset the executing player's score
scoreboard players reset @s tbp_melee_count