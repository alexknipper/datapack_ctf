### Team Battle Pack - Status Turret Firing
### This function fires the Status Turret whenever it is called as/at a status turret

## SFX
execute if entity @a[tag=enemy,distance=..12.5,limit=1,sort=nearest] run particle minecraft:instant_effect ~ ~1.65 ~ .5 .25 .5 .01 25 force
execute if entity @a[tag=enemy,distance=..12.5,limit=1,sort=nearest] run playsound minecraft:entity.evoker.cast_spell block @a[distance=..12.5] ~ ~ ~ 100 1.5 1



## Apply the appropriate effects to all enemies
# Poison
execute as @s[tag=poison] run effect give @a[tag=enemy,distance=..12.5] minecraft:poison 5 1 true
# Nausea
execute as @s[tag=nausea] run effect give @a[tag=enemy,distance=..12.5] minecraft:nausea 10 1 true
# Wither
execute as @s[tag=wither] run effect give @a[tag=enemy,distance=..12.5] minecraft:wither 5 1 true
# Slowness
execute as @s[tag=slowness] run effect give @a[tag=enemy,distance=..12.5] minecraft:slowness 10 1 true



## Reset this turret's timer score
scoreboard players reset @s tbp_def_timer