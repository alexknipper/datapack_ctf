### Team Battle Pack - Rotate Global Nexus Core List
### This function simply rotates the list clockwise every time it is called

## Append a new -1 to the list
data modify storage team_battle_pack missing_core append value {team:-1}



## Set the -1 to be the iteam at the front of the list
data modify storage team_battle_pack missing_core[{team:-1}].team set from storage team_battle_pack missing_core[0].team



## Remove the 0th element from the list
data remove storage team_battle_pack missing_core[0]