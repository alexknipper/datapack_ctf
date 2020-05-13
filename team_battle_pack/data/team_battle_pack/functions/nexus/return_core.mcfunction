### Team Battle Pack - Nexus Core Return
### This function is designed to return a captured/dropped core to its original nexus

## Spawn an armor stand at spawn to remove the team from global storage
# Spawn the armor stand
summon armor_stand ~ -2 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["core_returner,new"]}
# Replicate the team score from the executing player to the armor stand
scoreboard players operation @e[type=minecraft:armor_stand,tag=core_returner,tag=new,limit=1] tbp_team = @s tbp_core_removed
# Remove the 'new' tag
tag @e[type=minecraft:armor_stand,tag=core_returner,tag=new,limit=1] remove new



## Remove the player's 'core_holder' tag
tag @s remove core_holder



## Reset the player's 'tbp_core_removed' value
scoreboard players reset @s tbp_core_removed



## Reset the execution conditions of this function
# Reset the executing player's death count (If applicable)
execute as @s[scores={tbp_holder_death=1..}] run scoreboard players reset @s tbp_holder_death
# Remove the 'captured_flag' tag (If applicable)
execute as @s[tag=captured_flag] run tag @s remove captured_flag