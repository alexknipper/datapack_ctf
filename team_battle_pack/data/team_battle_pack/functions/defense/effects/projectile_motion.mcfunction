### Team Battle Pack - Projectile Motion
### This function, when run as a projectile at a ranged turret, gives the projectile motion to the nearest enemy

## Run the calculations to get dx, dy, and dz
execute as @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1,sort=nearest] run scoreboard players operation @s tbp_ranged_dx -= @s tbp_ranged_x
execute as @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1,sort=nearest] run scoreboard players operation @s tbp_ranged_dy -= @s tbp_ranged_y
execute as @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1,sort=nearest] run scoreboard players operation @s tbp_ranged_dz -= @s tbp_ranged_z
# Adjust the dy for fireballs
#execute as @s[type=minecraft:fireball] as @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1,sort=nearest] run scoreboard players add @s tbp_ranged_dy 1



## Add fire to upgraded arrows
execute at @e[type=minecraft:armor_stand,tag=ranged_turret,tag=upgraded,distance=..1,limit=1,sort=nearest] run data merge entity @s {Fire:1000s,damage:3.0d}



## Store dx, dy, and dz into the data of the projectile
# If the projectile is an arrow
data modify entity @s[type=minecraft:arrow] NoGravity set value 0
execute store result entity @s[type=minecraft:arrow] Motion[0] double .1 run scoreboard players get @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1] tbp_ranged_dx
execute store result entity @s[type=minecraft:arrow] Motion[1] double .1 run scoreboard players get @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1] tbp_ranged_dy
execute store result entity @s[type=minecraft:arrow] Motion[2] double .1 run scoreboard players get @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1] tbp_ranged_dz
# If the projectile is a fireball
#execute store result entity @s[type=minecraft:fireball] direction[0] double .1 run scoreboard players get @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1] tbp_ranged_dx
#execute store result entity @s[type=minecraft:fireball,scores={dy=0..}] direction[1] double .05 run scoreboard players get @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1] tbp_ranged_dy
#execute store result entity @s[type=minecraft:fireball,scores={dy=..-1}] direction[1] double .15 run scoreboard players get @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1] tbp_ranged_dy
#execute store result entity @s[type=minecraft:fireball] direction[2] double .1 run scoreboard players get @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1] tbp_ranged_dz



## Un-tag the arrow
tag @s remove ranged_projectile