### Team Battle Pack - General Scheduler
### This function is designed to run every tick, and trigger more specific command schedulers during pre-specified intervals of time

## Increment the necessary timers
# Timer to control special effects
scoreboard players add sfx ks5_tbp_time 1
# Timer to control Nexus modifications
scoreboard players add nexus ks5_tbp_time 1

## When the timers reach their designated values, trigger the associated scheduler, and reset the value
# Scheduler to control special effects
execute if score sfx ks5_tbp_time = sfx ks5_tbp_schedule run scoreboard players set sfx ks5_tbp_time 0
# Scheduler to control Nexus modifications
execute if score nexus ks5_tbp_time = nexus ks5_tbp_schedule run scoreboard players set nexus ks5_tbp_time 0