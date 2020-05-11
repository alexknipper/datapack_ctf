### Team Battle Pack - General Scheduler
### This function is designed to run every tick, and trigger more specific command schedulers during pre-specified intervals of time

## Increment the necessary timers
# Timer to control special effects
scoreboard players add sfx tbp_timer 1
# Timer to control Nexus modifications
scoreboard players add nexus tbp_timer 1



## When the timers reach their designated values, trigger the associated scheduler, and reset the value
# Scheduler to control special effects
execute if score sfx tbp_timer = sfx tbp_schedule run function team_battle_pack:sfx/scheduler
execute if score sfx tbp_timer = sfx tbp_schedule run scoreboard players set sfx tbp_timer 0
# Scheduler to control Nexus modifications
execute if score nexus tbp_timer = nexus tbp_schedule run function team_battle_pack:nexus/scheduler
execute if score nexus tbp_timer = nexus tbp_schedule run scoreboard players set nexus tbp_timer 0