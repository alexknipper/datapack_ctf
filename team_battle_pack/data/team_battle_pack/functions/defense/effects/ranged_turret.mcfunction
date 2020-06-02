### Team Battle Pack - Ranged Turret Firing
### This function fires the Ranged Turret whenever it is called as/at a ranged turret

## Tag all players that are not on the same team as the turret
#execute as @a[distance=..25] unless score @s tbp_team = @e[type=minecraft:armor_stand,tag=ranged_turret,distance=..1,limit=1] tbp_team unless score @s tbp_team matches 0 run tag @s add enemy



## Pick the nearest target, and face towards them to fire
# Face the target
#tp @s ~ ~ ~ facing entity @a[tag=enemy,distance=..25,limit=1,sort=nearest]
# Store the target's position in a scoreboard
execute if entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] store result score @s tbp_ranged_dx run data get entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] Pos[0]
execute if entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] store result score @s tbp_ranged_dy run data get entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] Pos[1]
execute if entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] store result score @s tbp_ranged_dz run data get entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] Pos[2]
# If the turret is not upgraded, spawn an arrow & give it the appropriate motion
execute as @s[tag=ranged_turret,tag=!upgraded] if entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] run summon minecraft:arrow ^ ^2 ^1.65 {NoGravity:1b,Motion:[0.0,0.0,0.0],Tags:["ranged_projectile"]}
execute as @s[tag=ranged_turret,tag=!upgraded] if entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] as @e[type=minecraft:arrow,tag=ranged_projectile,distance=1.6..3,limit=1,sort=nearest] run function team_battle_pack:defense/effects/projectile_motion
# If the turret is upgraded, spawn a fireball & give it the appropriate motion
execute as @s[tag=ranged_turret,tag=upgraded] if entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] run summon minecraft:fireball ^ ^2 ^1.65 {ExplosionPower:0,direction:[0.0,0.0,0.0],Tags:["ranged_projectile"]}
execute as @s[tag=ranged_turret,tag=upgraded] if entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] as @e[type=minecraft:fireball,tag=ranged_projectile,distance=1.6..3,limit=1,sort=nearest] run function team_battle_pack:defense/effects/projectile_motion



## SFX
execute if entity @a[tag=enemy,distance=..25,limit=1,sort=nearest] run particle minecraft:smoke ~ ~1.65 ~ .5 .5 .5 .1 10 force



## Reset this turret's timer score
scoreboard players reset @s tbp_def_timer