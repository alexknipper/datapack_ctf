### Team Battle Pack - Remove Nexus Core From Global List
### This function is designed to remove the core from the stolen flags list (Processed as an armor stand at spawn)

## Get the team number from element 0 in the list
execute store result score @s tbp_core_removed run data get storage team_battle_pack missing_core[0].team 1



## If the 'tbp_team' value and this new value match, remove the 0th element and kill the executing armor stand
# Remove the 0th element (If applicable)
execute if score @s tbp_team = @s tbp_core_removed run data remove storage team_battle_pack missing_core[0]
# Kill the executing armor stand (If applicable)
execute if score @s tbp_team = @s tbp_core_removed run kill @s