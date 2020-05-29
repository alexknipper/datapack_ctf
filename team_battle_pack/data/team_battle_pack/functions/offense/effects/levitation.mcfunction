### Team Battle Pack - Levitation Field
### This function, run as/at all levitation fields, applies the effect(s) to team members

## Grant the effect to all players within a 4 block radius
execute as @a[distance=..4] if score @s tbp_team = @e[type=minecraft:area_effect_cloud,tag=lev_fld,distance=..4,limit=1,sort=nearest] tbp_team run effect give @s minecraft:levitation 5 4 true