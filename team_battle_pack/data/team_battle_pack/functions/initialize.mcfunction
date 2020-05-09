### Team Battle Pack - Pack Initializer
### This function is designed to run once, when the pack is intstalled for the very first time

## Create necessary scoreboard objectives
# Scoreboard value to keep track of time (in ticks)
scoreboard objectives add tbp_timer dummy
# Scoreboard value to keep track of maximum time (in ticks)
scoreboard objectives add tbp_schedule dummy

## Create necessary durations for each functionality
# Activation interval for special effects
scoreboard players set sfx tbp_schedule 2
# Activation interval for nexus modifications
scoreboard players set nexus tbp_schedule 5

## Create storage for the pack, and signal that the pack is installed
data modify storage team_battle_pack installed set value 1