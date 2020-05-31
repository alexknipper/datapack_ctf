### Team Battle Pack - Ranged Turret Construction
### This function, when run as/at a Ranged Turret Kit, constructs a ranged turret

## Summon the armor stand
# Summon an item frame to center the armor stand
summon minecraft:item_frame ~ ~ ~
# Summon th earmor stand
execute at @e[type=minecraft:item_frame,distance=..1,limit=1,sort=nearest] run summon armor_stand ~ ~-2 ~ {Invisible:1,NoGravity:1,Invulnerable:1b,ArmorItems:[{},{},{},{id:dispenser,Count:1b}],DisabledSlots:5039583,Tags:["ranged_turret"]}
# Kill the item frame
kill @e[type=minecraft:item_frame,distance=..1,limit=1,sort=nearest]



## Assign the turret's team and color
# Team
execute as @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run scoreboard players operation @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1.65,limit=1] tbp_team = @s tbp_team
# Color
execute as @e[type=minecraft:end_crystal,tag=nexus,distance=..1,limit=1] run scoreboard players operation @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1.65,limit=1] tbp_color = @s tbp_color



## Increment the Nexus' turret counter
scoreboard players add @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1,sort=nearest] tbp_num_turret_r 1



## SFX
playsound minecraft:item.shield.break master @a[distance=..10] ~ ~ ~ 100 .5 1



## Reset all arrow usage scores in a 10-block radius
scoreboard players reset @a[distance=..10] tbp_arrow_use



## Kill the executing item
kill @s