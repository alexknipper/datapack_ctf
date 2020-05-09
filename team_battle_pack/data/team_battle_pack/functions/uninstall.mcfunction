### Team Battle Pack - Pack Initializer
### This function is designed to run once, when the pack is intstalled for the very first time

## Remove necessary scoreboard objectives
# Scoreboard value to keep track of time (in ticks)
scoreboard objectives remove ks5_tbp_time
# Scoreboard value to keep track of maximum time (in ticks)
scoreboard objectives remove ks5_tbp_schedule

## Signal that the pack was uninstalled
data remove storage ks5_tbp installed