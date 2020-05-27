### Team Battle Pack - SFX Scheduler
### This function is designed to display SFX every time it is called by the scheduler

## Colored Nexus SFX
# Red
execute at @e[scores={tbp_color=1},tag=nexus] run particle minecraft:dust 1 0 0 1 ~ ~ ~ .5 .5 .5 1 7 force
# Orange
execute at @e[scores={tbp_color=2},tag=nexus] run particle minecraft:dust 1 .5 0 1 ~ ~ ~ .5 .5 .5 1 7 force
# Yellow
execute at @e[scores={tbp_color=3},tag=nexus] run particle minecraft:dust 1 1 0 1 ~ ~ ~ .5 .5 .5 1 7 force
# Green
execute at @e[scores={tbp_color=4},tag=nexus] run particle minecraft:dust 0 .5 0 1 ~ ~ ~ .5 .5 .5 1 7 force
# Lime
execute at @e[scores={tbp_color=5},tag=nexus] run particle minecraft:dust 0 1 0 1 ~ ~ ~ .5 .5 .5 1 7 force
# Cyan
execute at @e[scores={tbp_color=6},tag=nexus] run particle minecraft:dust 0 .75 1 1 ~ ~ ~ .5 .5 .5 1 7 force
# Blue
execute at @e[scores={tbp_color=7},tag=nexus] run particle minecraft:dust 0 0 1 1 ~ ~ ~ .5 .5 .5 1 7 force
# Light Blue
execute at @e[scores={tbp_color=8},tag=nexus] run particle minecraft:dust .35 .65 1 1 ~ ~ ~ .5 .5 .5 1 7 force
# Purple
execute at @e[scores={tbp_color=9},tag=nexus] run particle minecraft:dust .5 0 1 1 ~ ~ ~ .5 .5 .5 1 7 force
# Magenta
execute at @e[scores={tbp_color=10},tag=nexus] run particle minecraft:dust 1 0 1 1 ~ ~ ~ .5 .5 .5 1 7 force
# Pink
execute at @e[scores={tbp_color=11},tag=nexus] run particle minecraft:dust 1 .55 .85 1 ~ ~ ~ .5 .5 .5 1 7 force
# White
execute at @e[scores={tbp_color=12},tag=nexus] run particle minecraft:dust 1 1 1 1 ~ ~ ~ .5 .5 .5 1 7 force
# Light Gray
execute at @e[scores={tbp_color=13},tag=nexus] run particle minecraft:dust .65 .65 .65 1 ~ ~ ~ .5 .5 .5 1 7 force
# Gray
execute at @e[scores={tbp_color=14},tag=nexus] run particle minecraft:dust .35 .35 .35 1 ~ ~ ~ .5 .5 .5 1 7 force
# Black
execute at @e[scores={tbp_color=15},tag=nexus] run particle minecraft:dust 0 0 0 1 ~ ~ ~ .5 .5 .5 1 7 force
# Brown
execute at @e[scores={tbp_color=16},tag=nexus] run particle minecraft:dust .35 .2 0 1 ~ ~ ~ .5 .5 .5 1 7 force



## Colored SFX for Everything Else
# Red
execute at @e[scores={tbp_color=1},tag=!nexus] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Orange
execute at @e[scores={tbp_color=2},tag=!nexus] run particle minecraft:dust 1 .5 0 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Yellow
execute at @e[scores={tbp_color=3},tag=!nexus] run particle minecraft:dust 1 1 0 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Green
execute at @e[scores={tbp_color=4},tag=!nexus] run particle minecraft:dust 0 .5 0 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Lime
execute at @e[scores={tbp_color=5},tag=!nexus] run particle minecraft:dust 0 1 0 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Cyan
execute at @e[scores={tbp_color=6},tag=!nexus] run particle minecraft:dust 0 .75 1 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Blue
execute at @e[scores={tbp_color=7},tag=!nexus] run particle minecraft:dust 0 0 1 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Light Blue
execute at @e[scores={tbp_color=8},tag=!nexus] run particle minecraft:dust .35 .65 1 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Purple
execute at @e[scores={tbp_color=9},tag=!nexus] run particle minecraft:dust .5 0 1 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Magenta
execute at @e[scores={tbp_color=10},tag=!nexus] run particle minecraft:dust 1 0 1 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Pink
execute at @e[scores={tbp_color=11},tag=!nexus] run particle minecraft:dust 1 .55 .85 1 ~ ~1 ~ .5 .5 .5 1 1 force
# White
execute at @e[scores={tbp_color=12},tag=!nexus] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Light Gray
execute at @e[scores={tbp_color=13},tag=!nexus] run particle minecraft:dust .65 .65 .65 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Gray
execute at @e[scores={tbp_color=14},tag=!nexus] run particle minecraft:dust .35 .35 .35 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Black
execute at @e[scores={tbp_color=15},tag=!nexus] run particle minecraft:dust 0 0 0 1 ~ ~1 ~ .5 .5 .5 1 1 force
# Brown
execute at @e[scores={tbp_color=16},tag=!nexus] run particle minecraft:dust .35 .2 0 1 ~ ~1 ~ .5 .5 .5 1 1 force



## Core Holder SFX
execute at @a[tag=core_holder] run particle minecraft:witch ~ ~2.25 ~ .05 .15 .05 .01 3 force