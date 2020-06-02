### Team Battle Pack - Pack Initializer
### This function is designed to run once, when the pack is intstalled for the very first time

## Create necessary scoreboard objectives
# Scoreboard value to keep track of time (in ticks)
scoreboard objectives add tbp_timer dummy
# Scoreboard value to keep track of maximum time (in ticks)
scoreboard objectives add tbp_schedule dummy
# Scoreboard value to keep track of teams
scoreboard objectives add tbp_team dummy
# Scoreboard value to keep track of item colors
scoreboard objectives add tbp_color dummy
# Scoreboard value to keep track of captured flags
scoreboard objectives add tbp_core_total dummy
# Scoreboard value to keep track of whether a flag has been stolen
scoreboard objectives add tbp_core_removed dummy
# Scoreboard value to keep track of global total number of missing cores
scoreboard objectives add tbp_num_removed dummy
# Scoreboard value to keep track of previous number of missing cores
scoreboard objectives add tbp_prev_removed dummy
# Scoreboard value to keep track of total number of list rotations
scoreboard objectives add tbp_num_rotated dummy
# Scoreboard value to keep track of core holder deaths
scoreboard objectives add tbp_holder_death deathCount
# Scoreboard value to keep track of defense timers
scoreboard objectives add tbp_def_timer dummy
# Scoreboard value to keep track of defense schedules
scoreboard objectives add tbp_def_schdul dummy
# Scoreboard values to keep track of positions (for ranged turrets)
scoreboard objectives add tbp_ranged_x dummy
scoreboard objectives add tbp_ranged_y dummy
scoreboard objectives add tbp_ranged_z dummy
scoreboard objectives add tbp_ranged_dx dummy
scoreboard objectives add tbp_ranged_dy dummy
scoreboard objectives add tbp_ranged_dz dummy
# Scoreboard value to keep track of dropped glowstone dust (nexus creation)
scoreboard objectives add tbp_glowdust_use minecraft.dropped:minecraft.glowstone_dust
# Scoreboard value to keep track of dropped name tags (nexus renaming)
scoreboard objectives add tbp_nametag_use minecraft.dropped:minecraft.name_tag
# Scoreboard value to keep track of dropped dyes (nexus coloring)
scoreboard objectives add tbp_red_use minecraft.dropped:minecraft.red_dye
scoreboard objectives add tbp_orange_use minecraft.dropped:minecraft.orange_dye
scoreboard objectives add tbp_yellow_use minecraft.dropped:minecraft.yellow_dye
scoreboard objectives add tbp_green_use minecraft.dropped:minecraft.green_dye
scoreboard objectives add tbp_lime_use minecraft.dropped:minecraft.lime_dye
scoreboard objectives add tbp_cyan_use minecraft.dropped:minecraft.cyan_dye
scoreboard objectives add tbp_blue_use minecraft.dropped:minecraft.blue_dye
scoreboard objectives add tbp_lblue_use minecraft.dropped:minecraft.light_blue_dye
scoreboard objectives add tbp_purple_use minecraft.dropped:minecraft.purple_dye
scoreboard objectives add tbp_magenta_use minecraft.dropped:minecraft.magenta_dye
scoreboard objectives add tbp_pink_use minecraft.dropped:minecraft.pink_dye
scoreboard objectives add tbp_white_use minecraft.dropped:minecraft.white_dye
scoreboard objectives add tbp_lgray_use minecraft.dropped:minecraft.light_gray_dye
scoreboard objectives add tbp_gray_use minecraft.dropped:minecraft.gray_dye
scoreboard objectives add tbp_black_use minecraft.dropped:minecraft.black_dye
scoreboard objectives add tbp_brown_use minecraft.dropped:minecraft.brown_dye
# Scoreboard value to keep track of dropped papers (nexus coloring)
#scoreboard objectives add tbp_paper_use minecraft.dropped:minecraft.paper
# Scoreboard value to keep track of dropped gold nuggets (nexus attunement)
scoreboard objectives add tbp_gnugget_use minecraft.dropped:minecraft.gold_nugget
# Scoreboard value to keep track of dropped redstone torches
scoreboard objectives add tbp_rtorch_use minecraft.dropped:minecraft.redstone_torch
# Scoreboard value to keep track of dropped firework stars
scoreboard objectives add tbp_firestar_use minecraft.dropped:minecraft.firework_star
# Scoreboard value to keep track of dropped nether stars
scoreboard objectives add tbp_nstar_use minecraft.dropped:minecraft.nether_star
# Scoreboard value to keep track of dropped arrows
scoreboard objectives add tbp_arrow_use minecraft.dropped:minecraft.arrow
# Scoreboard value to keep track of dropped fire charges
scoreboard objectives add tbp_fcharge_use minecraft.dropped:minecraft.fire_charge
# Scoreboard value to keep track of dropped iron swords
scoreboard objectives add tbp_iringot_use minecraft.dropped:minecraft.iron_ingot
# Scoreboard value to keep track of dropped blaze rods
scoreboard objectives add tbp_blazrod_use minecraft.dropped:minecraft.blaze_rod
# Scoreboard value to keep track of dropped spider eyes
#scoreboard objectives add tbp_spieye_use minecraft.dropped:minecraft.spider_eye
# Scoreboard value to keep track of dropped fermented spider eyes
#scoreboard objectives add tbp_fspieye_use minecraft.dropped:minecraft.fermented_spider_eye
# Scoreboard value to keep track of dropped wither roses
#scoreboard objectives add tbp_withrose_use minecraft.dropped:minecraft.wither_rose
# Scoreboard value to keep track of dropped slimeballs
#scoreboard objectives add tbp_slimball_use minecraft.dropped:minecraft.slime_ball
# Scoreboard value to keep track of total defense crafters
scoreboard objectives add tbp_num_craft_d dummy
# Scoreboard value to keep track of total offense crafters
scoreboard objectives add tbp_num_craft_o dummy
# Scoreboard value to keep track of total ranged turrets
scoreboard objectives add tbp_num_turret_r dummy
# Scoreboard value to keep track of total melee turrets
scoreboard objectives add tbp_num_turret_m dummy
# Scoreboard value to keep track of total status turrets
scoreboard objectives add tbp_num_turret_s dummy
# Scoreboard value to keep track of item counts in a crafter
scoreboard objectives add tbp_item_count dummy



## Create schedules for each timer
# Activation interval for the special effects scheduler
scoreboard players set sfx tbp_schedule 2
# Activation interval for the nexus scheduler
scoreboard players set nexus tbp_schedule 5
# Activation interval for the offensive scheduler
scoreboard players set offense tbp_schedule 7
# Activation interval for the defensive scheduler
scoreboard players set defense tbp_schedule 11



## Create handler for team IDs
scoreboard players set next_team tbp_team 1
## Create handler for total number of cores
scoreboard players set total_removed_cores tbp_num_removed 0



## Create limiters for defenses
# Max number of crafters
scoreboard players set limit tbp_num_craft_d 5
scoreboard players set limit tbp_num_craft_o 5
# Max number of ranged turrets
scoreboard players set limit tbp_num_turret_r 10
# Max number of melee turrets
scoreboard players set limit tbp_num_turret_m 15
# Max number of status turrets
scoreboard players set limit tbp_num_turret_s 25



## Create schedules for defense turrets
# Ranged Turrets
scoreboard players set ranged tbp_def_schdul 8
# Melee Turrets
scoreboard players set melee tbp_def_schdul 5
# Status Turrets
scoreboard players set status tbp_def_schdul 2



## Create storage for the pack, and signal that the pack is installed
data modify storage team_battle_pack installed set value 1
tellraw @a ["",{"text":"The "},{"text":"Team Battle Pack","color":"gold"},{"text":" has been successfully "},{"text":"installed","color":"green"}]