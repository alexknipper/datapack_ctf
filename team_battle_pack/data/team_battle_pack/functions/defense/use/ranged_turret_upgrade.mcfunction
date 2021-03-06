### Team Battle Pack - Ranged Turret Upgrade
### This function, when run as the Upgrade Module at the turret, upgrades a ranged turret

## Add the tag to the turret
execute as @e[type=minecraft:armor_stand,tag=ranged_turret,tag=!upgraded,distance=..1,limit=1,sort=nearest] run tag @s add upgraded



## SFX
particle minecraft:flame ~ ~1.65 ~ .35 .35 .35 .01 25 force
playsound minecraft:item.firecharge.use block @a[distance=..5] ~ ~ ~ 100 1.5 1



## Reset all fire charge usage scores
scoreboard players reset @a[distance=..25] tbp_fcharge_use



## Kill the item
kill @s