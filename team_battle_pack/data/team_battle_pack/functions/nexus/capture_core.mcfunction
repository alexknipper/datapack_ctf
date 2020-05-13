### Team Battle Pack - Capture Core
### This function is designed to run whenever a core gets captured

## Increment the nexus' 'tbp_core_total' score
execute at @s as @e[type=minecraft:end_crystal,tag=nexus,distance=..3,limit=1] run scoreboard players add @s tbp_core_total 1



## Update the display
execute at @s as @e[type=minecraft:end_crystal,tag=nexus,distance=..3,limit=1] at @s run function team_battle_pack:nexus/update_display



## SFX
execute at @s at @e[type=minecraft:end_crystal,tag=nexus,distance=..3,limit=1] run playsound minecraft:block.portal.travel block @a[distance=..100] ~ ~ ~ 100 2 1
execute at @s at @e[type=minecraft:end_crystal,tag=nexus,distance=..3,limit=1] run particle minecraft:instant_effect ~ ~ ~ 1 1 1 .01 50 force



## Announce the capture to chat
# Score of 1
execute at @s if score @e[type=minecraft:end_crystal,tag=nexus,distance=..3,limit=1] tbp_core_total matches 1 run tellraw @a ["",{"selector":"@p"},{"text":" has "},{"text":"captured","color":"green"},{"text":" another nexus' "},{"text":"core","color":"gold"},{"text":"!\n"},{"nbt":"CustomName","entity":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]","interpret":true},{"text":" now has "},{"score":{"name":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]","objective":"tbp_core_total"}},{"text":" cores","color":"gold"},{"text":"!"}]
# Score greater than 1
execute at @s unless score @e[type=minecraft:end_crystal,tag=nexus,distance=..3,limit=1] tbp_core_total matches 1 run tellraw @a ["",{"selector":"@p"},{"text":" has "},{"text":"captured","color":"green"},{"text":" another nexus' "},{"text":"core","color":"gold"},{"text":"!\n"},{"nbt":"CustomName","entity":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]","interpret":true},{"text":" now has "},{"score":{"name":"@e[type=minecraft:end_crystal,tag=nexus,limit=1,sort=nearest]","objective":"tbp_core_total"}},{"text":" cores","color":"gold"},{"text":"!"}]



## Tag the executing player with 'captured_flag' to trigger the core return
tag @s add captured_flag