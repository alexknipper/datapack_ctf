### Team Battle Pack - Nexus Scheduler
### This function is designed to run every time the scheduler calls it, to schedule all Nexus-based operations and modifications

## Nexus Creation
execute as @a[scores={tbp_glowdust_use=1..}] unless entity @e[type=minecraft:end_crystal,tag=nexus,distance=..50] as @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..5,limit=1,sort=nearest] at @s if block ~ ~ ~ minecraft:end_rod if block ~ ~-1 ~ minecraft:smooth_stone run function team_battle_pack:nexus/create
execute as @a[scores={tbp_glowdust_use=1..}] run scoreboard players reset @s tbp_glowdust_use


## Nexus Destruction



## Nexus Renaming



## Nexus Coloring



## Nexus Theft



## Nexus Captures