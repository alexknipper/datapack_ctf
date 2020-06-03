### Team Battle Pack - Status Turret Construction
### This function, when run as/at a Status Turret Kit, constructs a status turret

## Summon the armor stand
# Summon an item frame to center the armor stand
summon minecraft:item_frame ~ ~ ~
# Summon the armor stand if the kit was a Poison Kit
execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"Poison Turret Kit","color":"dark_purple"}'}}}}] at @e[type=minecraft:item_frame,distance=..1,limit=1,sort=nearest] run summon armor_stand ~ ~-2 ~ {Invisible:1,NoGravity:1,Invulnerable:1b,ArmorItems:[{},{},{},{id:glass,Count:1b}],DisabledSlots:5039583,Tags:["status_turret","poison"]}
# Summon the armor stand if the kit was a Nausea Kit
execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"Nausea Turret Kit","color":"dark_green"}'}}}}] at @e[type=minecraft:item_frame,distance=..1,limit=1,sort=nearest] run summon armor_stand ~ ~-2 ~ {Invisible:1,NoGravity:1,Invulnerable:1b,ArmorItems:[{},{},{},{id:glass,Count:1b}],DisabledSlots:5039583,Tags:["status_turret","nausea"]}
# Summon the armor stand if the kit was a Wither Kit
execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"Wither Turret Kit","color":"dark_gray"}'}}}}] at @e[type=minecraft:item_frame,distance=..1,limit=1,sort=nearest] run summon armor_stand ~ ~-2 ~ {Invisible:1,NoGravity:1,Invulnerable:1b,ArmorItems:[{},{},{},{id:glass,Count:1b}],DisabledSlots:5039583,Tags:["status_turret","wither"]}
# Summon the armor stand if the kit was a Slowness Kit
execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"Slowness Turret Kit","color":"dark_blue"}'}}}}] at @e[type=minecraft:item_frame,distance=..1,limit=1,sort=nearest] run summon armor_stand ~ ~-2 ~ {Invisible:1,NoGravity:1,Invulnerable:1b,ArmorItems:[{},{},{},{id:glass,Count:1b}],DisabledSlots:5039583,Tags:["status_turret","slowness"]}
# Kill the item frame
kill @e[type=minecraft:item_frame,distance=..1,limit=1,sort=nearest]



## Assign the turret's team and color
# Team
execute as @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] run scoreboard players operation @e[type=minecraft:armor_stand,tag=status_turret,distance=..1.65,limit=1,sort=nearest] tbp_team = @s tbp_team
# Color
execute as @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1] run scoreboard players operation @e[type=minecraft:armor_stand,tag=status_turret,distance=..1.65,limit=1,sort=nearest] tbp_color = @s tbp_color



## Increment the Nexus' turret counter
scoreboard players add @e[type=minecraft:end_crystal,tag=nexus,distance=..100,limit=1,sort=nearest] tbp_num_turret_s 1



## SFX
playsound minecraft:item.shield.break master @a[distance=..10] ~ ~ ~ 100 .5 1



## Reset all blaze rod usage scores in a 10-block radius
scoreboard players reset @a[distance=..10] tbp_blazrod_use



## Kill the executing item
kill @s