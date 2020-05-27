### Team Battle Pack - Offense Crafter Crafting
### This function determines which crafting recipe (if any) to use

## Corrupted Field Generator
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fermented_spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:charcoal",tag:{display:{Name:"{\"text\":\"Corrupted Field Generator\",\"color\":\"dark_green\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:offense/crafting/corrupted_field_generator
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fermented_spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:offense/crafting/corrupted_field_generator



## Strength Field
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:blaze_powder"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:firework_star",tag:{display:{Name:"{\"text\":\"Strength Field\",\"color\":\"dark_red\"}"},Explosion:{Colors:[I;11743532]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:offense/crafting/strength_field
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:blaze_powder"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:offense/crafting/strength_field



## Regeneration Field
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:ghast_tear"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:firework_star",tag:{display:{Name:"{\"text\":\"Regeneration Field\",\"color\":\"red\"}"},Explosion:{Colors:[I;14188952]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:offense/crafting/regeneration_field
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:ghast_tear"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:offense/crafting/regeneration_field



## Fire Resistance Field
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:magma_cream"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:firework_star",tag:{display:{Name:"{\"text\":\"Fire Resistance Field\",\"color\":\"gold\"}"},Explosion:{Colors:[I;15435844]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:offense/crafting/fire_resistance_field
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:magma_cream"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:offense/crafting/fire_resistance_field



## Jump Boost Field
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:rabbit_foot"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:firework_star",tag:{display:{Name:"{\"text\":\"Jump Boost Field\",\"color\":\"green\"}"},Explosion:{Colors:[I;4312372]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:offense/crafting/jump_boost_field
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:rabbit_foot"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:offense/crafting/jump_boost_field



## Swiftness Field
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:sugar"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:firework_star",tag:{display:{Name:"{\"text\":\"Swiftness Field\",\"color\":\"aqua\"}"},Explosion:{Colors:[I;6719955]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:offense/crafting/swiftness_field
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:sugar"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:offense/crafting/swiftness_field



## Water Breathing Field
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:pufferfish"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:firework_star",tag:{display:{Name:"{\"text\":\"Water Breathing Field\",\"color\":\"blue\"}"},Explosion:{Colors:[I;2437522]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:offense/crafting/water_breathing_field
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:pufferfish"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:offense/crafting/water_breathing_field