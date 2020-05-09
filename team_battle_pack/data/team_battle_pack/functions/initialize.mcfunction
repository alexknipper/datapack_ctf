### Team Battle Pack - Pack Initializer
### This function is designed to run once, when the pack is intstalled for the very first time

## Create necessary scoreboard objectives
# Scoreboard value to keep track of time (in ticks)
scoreboard objectives add ks5_tbp_tick dummy

## Create necessary scoreboard players
# Player to keep track of time (in ticks) for the scheduler
scoreboard players set ks5_tbp_scheduler ks5_tbp_tick 0

## Create storage for the pack, and signal that the pack is installed
data modify storage ks5_tbp installed set value 1