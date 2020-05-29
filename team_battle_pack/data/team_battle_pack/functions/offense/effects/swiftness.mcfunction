### Team Battle Pack - Swiftness Field
### This function, run as/at all swiftness fields, applies the effect(s) to team members

## Grant the effect to all players within a 4 block radius
execute as @a[distance=..4] if score @s tbp_team = @e[type=minecraft:area_effect_cloud,tag=swft_fld,distance=..4,limit=1,sort=nearest] tbp_team run effect give @s minecraft:swiftness 15 2 true