### Team Battle Pack - Melee Turret Firing
### This function fires the Melee Turret whenever it is called as/at a melee turret

## SFX
execute if entity @a[tag=enemy,distance=..7.5,limit=1,sort=nearest] run particle minecraft:smoke ~ ~1.65 ~ 1 .25 1 .01 75 force
execute if entity @a[tag=enemy,distance=..7.5,limit=1,sort=nearest] run playsound minecraft:entity.player.attack.sweep master @a[distance=..7.5] ~ ~ ~ 100 .75 1



## Summon Evoker Fangs at all targets
execute at @a[tag=enemy,distance=..7.5] run summon minecraft:evoker_fangs ~ ~ ~



## Reset this turret's timer score
scoreboard players reset @s tbp_def_timer