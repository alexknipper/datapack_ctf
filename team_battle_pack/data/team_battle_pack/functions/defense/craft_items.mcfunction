### Team Battle Pack - Defense Crafter Crafting
### This function determines which crafting recipe (if any) to use

## Stasis Zone Controller
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:nether_star"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:nether_star",tag:{display:{Name:"{\"text\":\"Effect Field Core\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/effect_field
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:nether_star"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/effect_field



## Ranged Turret Kit
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:arrow"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:arrow",tag:{display:{Name:"{\"text\":\"Ranged Turret Kit\",\"color\":\"yellow\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/ranged_turret
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:arrow"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/ranged_turret



## Ranged Turret Upgrade Kit
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fire_charge"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:fire_charge",tag:{display:{Name:"{\"text\":\"Ranged Turret Upgrade Module\",\"color\":\"gold\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/ranged_turret_upgrade
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fire_charge"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/ranged_turret_upgrade



## Melee Turret Kit
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:iron_ingot"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:iron_ingot",tag:{display:{Name:"{\"text\":\"Melee Turret Kit\",\"color\":\"red\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/melee_turret
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:iron_ingot"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/melee_turret



## Status Turret Base Controller
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:blaze_rod"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Status Turret Core\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/status_turret_base
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:blaze_rod"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/status_turret_base



## Poison Turret Kit
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Status Turret Core\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Poison Turret Kit\",\"color\":\"dark_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/poison_turret
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Status Turret Core\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/poison_turret



## Nausea Turret Kit
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fermented_spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Status Turret Core\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Nausea Turret Kit\",\"color\":\"dark_green\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/nausea_turret
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fermented_spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Status Turret Core\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/nausea_turret



## Wither Turret Kit
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:wither_rose"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Status Turret Core\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Wither Turret Kit\",\"color\":\"gray\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/wither_turret
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:wither_rose"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Status Turret Core\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/wither_turret



## Slowness Turret Kit
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:slime_ball"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Status Turret Core\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Slowness Turret Kit\",\"color\":\"dark_blue\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/slowness_turret
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:slime_ball"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Status Turret Core\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/slowness_turret