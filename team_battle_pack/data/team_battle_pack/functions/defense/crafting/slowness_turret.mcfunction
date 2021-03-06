### Team Battle Pack - Slowness Turret Kit Crafting
### This function, run as/at a crafter, makes the slowness turret item

## Decrement the number of slimeballs
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
execute store result score @s tbp_item_count run data get block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Slowness Turret Kit\",\"color\":\"dark_blue\"}",Lore:["\"Throw this item onto a smooth\"","\"stone slab to create a\"","\"Slowness Turret\""]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}].Count 1
scoreboard players add @s tbp_item_count 1
execute store result block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Slowness Turret Kit\",\"color\":\"dark_blue\"}",Lore:["\"Throw this item onto a smooth\"","\"stone slab to create a\"","\"Slowness Turret\""]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}].Count byte 1 run scoreboard players get @s tbp_item_count
# If the item doesn't already exist in the output slot, create it
execute unless data block ~ ~1 ~ Items[{Slot:2b}] run data modify block ~ ~1 ~ Items append value {Slot:2b,id:"minecraft:blaze_rod",Count:1b,tag:{display:{Name:"{\"text\":\"Slowness Turret Kit\",\"color\":\"dark_blue\"}",Lore:["\"Throw this item onto a smooth\"","\"stone slab to create a\"","\"Slowness Turret\""]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:39}}



## Grant the advancement
advancement grant @a[distance=..10] only team_battle_pack:defense/crafting/slowness_turret