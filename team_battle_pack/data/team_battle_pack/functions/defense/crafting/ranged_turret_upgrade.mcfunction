### Team Battle Pack - Ranged Turret Upgrade Module Crafting
### This function, run as/at a crafter, makes the ranged turret upgrade item

## Decrement the number of nether stars
# Store the current count into a scoreboard
execute store result score @s tbp_item_count run data get block ~ ~1 ~ Items[{Slot:0b}].Count 1
# Decrement the score
scoreboard players remove @s tbp_item_count 1
# Store the new count into the block
execute store result block ~ ~1 ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get @s tbp_item_count



## Decrement the number of blaze rods
# Store the current count into a scoreboard
execute store result score @s tbp_item_count run data get block ~ ~1 ~ Items[{Slot:1b}].Count 1
# Decrement the score
scoreboard players remove @s tbp_item_count 1
# Store the new count into the block
execute store result block ~ ~1 ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get @s tbp_item_count



## Craft the resultant item
# If the item already exists in the output slot, increment it
execute store result score @s tbp_item_count run data get block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:fire_charge",tag:{display:{Name:"{\"text\":\"Ranged Turret Upgrade Module\",\"color\":\"gold\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}].Count 1
scoreboard players add @s tbp_item_count 1
execute store result block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:fire_charge",tag:{display:{Name:"{\"text\":\"Ranged Turret Upgrade Module\",\"color\":\"gold\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}].Count byte 1 run scoreboard players get @s tbp_item_count
# If the item doesn't already exist in the output slot, create it
execute unless data block ~ ~1 ~ Items[{Slot:2b}] run data modify block ~ ~1 ~ Items append value {Slot:2b,id:"minecraft:fire_charge",Count:1b,tag:{display:{Name:"{\"text\":\"Ranged Turret Upgrade Module\",\"color\":\"gold\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}