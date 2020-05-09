### Team Battle Pack - Pack Initializer
### This function is designed to run once, when the pack is intstalled for the very first time

## Remove necessary scoreboard objectives
# Scoreboard value to keep track of time (in ticks)
scoreboard objectives remove tbp_timer
# Scoreboard value to keep track of maximum time (in ticks)
scoreboard objectives remove tbp_schedule

## Signal that the pack was uninstalled
data remove storage team_battle_pack installed