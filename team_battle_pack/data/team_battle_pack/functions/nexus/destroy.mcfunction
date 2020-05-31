### Team Battle Pack - Nexus Destruction
### This function destroys nexus that do not have the necessary structure (Mainly used when uninstalling the pack)

## Remove all players from the nexus' team
execute at @s as @a if score @s tbp_team = @e[type=minecraft:end_crystal,distance=..1,tag=nexus,tag=destroy_nexus,limit=1] tbp_team run scoreboard players reset @s tbp_team



## Return a nether star if there is an effect field
execute at @s if entity @e[type=minecraft:armor_stand,tag=effect_field] run summon minecraft:item ~ ~.3 ~ {Item:{id:"minecraft:nether_star",Count:1b}}



## Kill the score indicator and 'removed core' indicator
execute at @s run kill @e[type=minecraft:armor_stand,distance=..1]



## Remove the flag from the flag carrier, if there is one
execute at @s as @a[tag=core_holder] if score @s tbp_core_removed = @e[type=minecraft:end_crystal,distance=..1,tag=nexus,tag=destroy_nexus,limit=1] tbp_team run tag @s add nexus_destroyed
execute as @a[tag=core_holder,tag=nexus_destroyed] run function team_battle_pack:nexus/return_core
tag @a[tag=nexus_destroyed] remove nexus_destroyed



## SFX
execute at @s run summon minecraft:area_effect_cloud ~ ~.25 ~ {Particle:"enchant",ReapplicaitonDelay:20,Radius:2f,RadiusPerTick:-0.002f,RadiusOnUse:0.5f,Duration:10,DurationOnUse:0.0f}
execute at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..100] ~ ~ ~ 100 2 1



## Kill the nexus
kill @s