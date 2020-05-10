### Team Battle Pack - Nexus Destruction
### This function destroys nexus that do not have the necessary structure (Mainly used when uninstalling the pack)

## Tag the nexus to be destroyed
tag @s add destroy_nexus

## If the nexus still has the proper structure, remove the tag

## If the tag is still there, get ready to de-allocate the nexus
# Remove all players from the nexus' team
execute at @s[tag=nexus_destroy] as @a if score @s tbp_team = @e[type=minecraft:end_crystal,distance=..1,tag=nexus,tag=nexus_destroy,limit=1] tbp_team run scoreboard players reset @s tbp_team
# hi