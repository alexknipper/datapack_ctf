### Team Battle Pack - Defense Crafter Crafting
### This function determines which crafting recipe (if any) to use

## Stasis Zone Controller
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:nether_star"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:defense/crafting/effect_field
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:nether_star"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_rod"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:nether_star",tag:{display:{Name:"{\"text\":\"Effect Field Core\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:defense/crafting/effect_field



## Ranged Turret Kit
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:arrow"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:redstone_dust"}] run function team_battle_pack:defense/crafting/ranged_turret



## Ranged Turret Upgrade Kit
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fire_charge"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:redstone_dust"}] run function team_battle_pack:defense/crafting/ranged_turret_upgrade



## Melee Turret Kit
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:iron_sword"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:redstone_dust"}] run function team_battle_pack:defense/crafting/melee_turret



## Status Turret Base Controller
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:blaze_powder"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:redstone_dust"}] run function team_battle_pack:defense/crafting/status_turret_base



## Poison Turret Kit
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_powder"}] run function team_battle_pack:defense/crafting/poison_turret



## Weakness Turret Kit
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fermented_spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_powder"}] run function team_battle_pack:defense/crafting/weakness_turret



## Wither Turret Kit
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:wither_rose"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_powder"}] run function team_battle_pack:defense/crafting/wither_turret



## Slowness Turret Kit
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:slime_ball"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:blaze_powder"}] run function team_battle_pack:defense/crafting/slowness_turret