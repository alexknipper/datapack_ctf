### Team Battle Pack - Offense Crafter Crafting
### This function determines which crafting recipe (if any) to use

## Corrupted Field Generator
# If result item is in output, but not a full stack
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fermented_spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] if data block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:charcoal",tag:{display:{Name:"{\"text\":\"Corrupted Field Generator\",\"color\":\"dark_green\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}] unless data block ~ ~1 ~ Items[{Slot:2b,Count:64b}] run function team_battle_pack:offense/crafting/corrupted_field_generator
# If no item is in output
execute if data block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:fermented_spider_eye"}] if data block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:charcoal"}] unless data block ~ ~1 ~ Items[{Slot:2b}] run function team_battle_pack:offense/crafting/corrupted_field_generator