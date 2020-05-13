### Team Battle Pack - Nexus Core Replacement
### This function will run as all loaded theft_indicators, to test for whether the core should be returned

## Set the current value in 'tbp_num_removed' to 'tbp_prev_removed'
scoreboard players operation @s tbp_prev_removed = @s tbp_num_removed



## Get the current team value from the 0th element in storage, and store it in 'tbp_num_removed'
execute store result score @s tbp_num_removed run data get storage team_battle_pack missing_core[0].team 1



## Test to see if it matches the team number in the theft_indicator, and set the 'tbp_core_removed' score to 2 if it matches
execute if score @s tbp_num_removed = @s tbp_team run scoreboard players set @s tbp_core_removed 2



## If the current value in 'tbp_prev_removed' is different than 'tbp_num_removed', increment 'tbp_num_rotated'
execute unless score @s tbp_prev_removed = @s tbp_num_removed run scoreboard players add @s tbp_num_rotated 1



## Kill the executing entity (If applicable)
# Kill it if the global stolen core counter is now 0
execute if score total_removed_cores tbp_num_removed matches 0 run kill @s
# Kill it if its 'tbp_num_rotated' score equals the total_removed_cores value, and its 'tbp_core_removed' score is NOT 2
execute unless entity @s[scores={tbp_core_removed=2}] if score total_removed_cores tbp_num_removed < @s tbp_num_rotated run kill @s



## Get ready to try again if it wasn't removed from the list
# Reset the 'tbp_num_rotated' score
execute as @s[scores={tbp_core_removed=2}] run scoreboard players reset @s tbp_num_rotated
# Reset the 'tbp_core_removed' score to 1
execute as @s[scores={tbp_core_removed=2}] run scoreboard players set @s tbp_core_removed 1