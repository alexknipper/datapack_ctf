### Team Battle Pack - Pack Initializer
### This function is designed to run once, when the pack is intstalled for the very first time

## Create necessary scoreboard objectives
# Scoreboard value to keep track of time (in ticks)
scoreboard objectives add ks5_tbp_time dummy
# Scoreboard value to keep track of maximum time (in ticks)
scoreboard objectives add ks5_tbp_schedule dummy

## Create necessary durations for each functionality
# Activation interval for special effects
scoreboard players set sfx ks5_tbp_schedule 2
# Activation interval for nexus modifications
scoreboard players set nexus ks5_tbp_schedule 5

## Create storage for the pack, and signal that the pack is installed
data modify storage ks5_tbp installed set value 1