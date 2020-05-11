### Team Battle Pack - Nexus Destruction
### This function destroys nexus that do not have the necessary structure (Mainly used when uninstalling the pack)

## Remove all players from the nexus' team
execute at @s as @a if score @s tbp_team = @e[type=minecraft:end_crystal,distance=..1,tag=nexus,tag=destroy_nexus,limit=1] tbp_team run scoreboard players reset @s tbp_team



## Kill the score indicator and 'removed core' indicator
execute at @s run kill @e[type=minecraft:armor_stand,distance=..1]



## Remove the flag from the flag carrier, if there is one



## SFX
execute at @s run summon minecraft:area_effect_cloud ~ ~.25 ~ {Particle:"enchant",ReapplicaitonDelay:20,Radius:2f,RadiusPerTick:-0.002f,RadiusOnUse:0.5f,Duration:10,DurationOnUse:0.0f}
execute at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 100 2 1



## Kill the nexus
kill @s