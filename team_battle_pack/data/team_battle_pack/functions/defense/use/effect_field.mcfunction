### Team Battle Pack - Effect Field Creation
### This function, when run as/at an effect field core on a nexus, spawns in the effect field armor stand

## Spawn the armor stand
execute as @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] at @s run summon minecraft:armor_stand ~ ~.3 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["effect_field"]}



## Give the armor stand the appropriate team and color
# Team
execute as @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] at @s run scoreboard players operation @e[type=minecraft:armor_stand,tag=effect_field,distance=..1,limit=1] tbp_team = @s tbp_team
# Color
execute as @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] at @s run scoreboard players operation @e[type=minecraft:armor_stand,tag=effect_field,distance=..1,limit=1] tbp_color = @s tbp_color



## SFX
playsound minecraft:block.conduit.activate master @a[distance=..100] ~ ~ ~ 100 .75 1



## Reset all usage scores
scoreboard players reset @a[distance=..100] tbp_nstar_use



## Kill the executing item
kill @s