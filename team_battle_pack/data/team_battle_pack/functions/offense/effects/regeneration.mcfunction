### Team Battle Pack - Regeneration Field
### This function, run as/at all regeneration fields, applies the effect(s) to team members

## Grant the effect to all players within a 4 block radius
execute as @a[distance=..5.5] if score @s tbp_team = @e[type=minecraft:area_effect_cloud,tag=regen_fld,distance=..5.5,limit=1,sort=nearest] tbp_team run effect give @s minecraft:regeneration 5 0 true