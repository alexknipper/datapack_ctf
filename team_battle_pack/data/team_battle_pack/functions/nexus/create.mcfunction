### Team Battle Pack - Nexus Creation
### This function spawns in a nexus when triggered by the nexus scheduler

## Summon an item frame to center the armor stand
execute at @s run summon minecraft:item_frame ~ ~1 ~

## Summon the armor stand
execute at @s at @e[type=minecraft:armor_stand,distance=1..2,limit=1,sort=nearest] run summmon minecraft:armor_stand ~ ~-2 ~ {CustomName:"{\"text\":\"Flags Captured: 0\"}",Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["capture_indicator"]}

## Kill the item frame
execute at @s run kill @e[type=minecraft:item_frame,distance=1..2,limit=1,sort=nearest]

## Spawn the end crystal
execute at @s at @e[type=minecraft:armor_stand,distance=..2,tag=capture_indicator,limit=1,sort=nearest] run summon minecraft:end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"Unnamed Nexus\"}",Tags:["nexus"]}

## SFX
execute at @s at @e[type=minecraft:end_crystal,distance=..2,tag=nexus,limit=1,sort=nearest] run summmon minecraft:area_effect_cloud ~ ~.25 ~ {Particle:"cloud",ReapplicaitonDelay:20,Radius:2f,RadiusPerTick:-0.002f,RadiusOnUse:0.5f,Duration:50,DurationOnUse:0.0f}
execute at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 100 1.5 1

## Announce the nexus' creation to chat
execute at @s run tellraw @a [{"selector":"@p"},{"text":" has created a new Nexus."}]

## Grant advancements to the player
#execute at @s run advancement grant @a[distance=..5] only team_battle_pack:

## Add the nexus and player to the appropriate team, and increment the team scoreboard
execute at @s as @e[type=minecraft:end_crystal,distance=..2,tag=nexus,limit=1,sort=nearest] run scoreboard players operation @s tbp_team = next_team tbp_team
execute at @s run scoreboard players operation @a[distance=..5] tbp_team = next_team tbp_team
scoreboard players add next_team tbp_team 1

## Kill the item that called this function
kill @s