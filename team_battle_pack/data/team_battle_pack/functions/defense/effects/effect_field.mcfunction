### Team Battle Pack - Effect Field Effects
### This function, when run as/at an effect field, applies the appropriate effects

## Apply effects to team members
execute as @a[distance=..100] if score @s tbp_team = @e[type=minecraft:armor_stand,tag=effect_field,distance=..1,limit=1] tbp_team run function team_battle_pack:defense/effects/effect_field_effects



## SFX
particle minecraft:end_rod ~ ~ ~ .75 .75 .75 .01 5 force