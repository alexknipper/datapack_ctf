### Team Battle Pack - Night Vision Field
### This function, run as/at all night vision fields, applies the effect(s) to team members

## Grant the effect to all players within a 5 block radius
execute as @a[distance=..5] if score @s tbp_team = @e[type=minecraft:area_effect_cloud,tag=ngt_vis_fld,distance=..5,limit=1,sort=nearest] tbp_team run effect give @s minecraft:night_vision 30 0 true