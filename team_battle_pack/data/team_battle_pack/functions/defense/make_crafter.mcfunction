### Team Battle Pack - Make Defense Crafter
### This function creates a defense crafter when called at/as a redstone torch on a blast furnace

## Summon an item frame to center the armor stand
summon minecraft:item_frame ~ ~ ~

## Summon the armor stand
execute at @e[type=minecraft:item_frame,distance=..1,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~-2.25 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["def_crafter"],ArmorItems:[{},{},{},{id:enchanting_table,Count:1b}],DisabledSlots:5039583}

## Kill the item frame
kill @e[type=minecraft:item_frame,distance=..1,limit=1,sort=nearest]

## SFX
playsound minecraft:block.anvil.place master @a[distance=..50] ~ ~ ~ 100 .65 1

## Grant advancements to the player
advancement grant @a[distance=..5] only team_battle_pack:defense

## Increment the nexus' entity counter
scoreboard players add @e[type=end_crystal,tag=nexus,distance=..100,limit=1] tbp_num_craft_d 1

## Set the crafter's team
scoreboard players operation @e[type=armor_stand,tag=def_crafter,distance=..1.65,limit=1] tbp_team = @e[type=end_crystal,tag=nexus,distance=..100,limit=1] tbp_team

## Reset the player's redstone torch usage score
scoreboard players reset @a[distance=..50] tbp_rtorch_use