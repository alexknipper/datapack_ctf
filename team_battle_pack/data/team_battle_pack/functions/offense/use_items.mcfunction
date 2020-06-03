### Team Battle Pack - Use Offensive Items
### This function will decide which field was used, and deploy it appropriately when run as the thrower at the item

## Summon the appropriate Area Effect Cloud
# Strength Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Strength Field","color":"dark_red"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"flame",Radius:4f,RadiusPerTick:-0.01f,Duration:300,Tags:["str_fld"]}
# Regeneration Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Regeneration Field","color":"red"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"happy_villager",Radius:5.5f,RadiusPerTick:-0.00643f,Duration:700,Tags:["regen_fld"]}
# Fire Resistance Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Fire Resistance Field","color":"gold"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dripping_lava",Radius:5f,RadiusPerTick:-0.008f,Duration:500,Tags:["fir_res_fld"]}
# Jump Boost Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Jump Boost Field","color":"green"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] at @s run summon minecraft:area_effect_cloud ~ ~.15 ~ {Particle:"totem_of_undying",Radius:4f,RadiusPerTick:-0.01f,Duration:300,Tags:["jmp_fld"]}
# Swiftness Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Swiftness Field","color":"aqua"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] at @s run summon minecraft:area_effect_cloud ~ ~.15 ~ {Particle:"firework",Radius:4f,RadiusPerTick:-0.01f,Duration:300,Tags:["swft_fld"]}
# Water Breathing Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Water Breathing Field","color":"blue"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] at @s run summon minecraft:area_effect_cloud ~ ~.15 ~ {Particle:"dolphin",Radius:5f,RadiusPerTick:-0.008f,Duration:500,Tags:["wtr_brth_fld"]}
# Slow Falling Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Slow Falling Field","color":"dark_purple"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dragon_breath",Radius:4f,RadiusPerTick:-0.01f,Duration:300,Tags:["slw_fall_fld"]}
# Night Vision Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Night Vision Field","color":"yellow"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"end_rod",Radius:5f,RadiusPerTick:-0.008f,Duration:500,Tags:["ngt_vis_fld"]}
# Levitation Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Levitation Field","color":"light_purple"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"witch",Radius:4f,RadiusPerTick:-0.01f,Duration:300,Tags:["lev_fld"]}
# Invisibility Field
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{display:{Name:'{"text":"Invisibility Field","color":"dark_aqua"}'},HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"mycelium",Radius:5f,RadiusPerTick:-0.008f,Duration:500,Tags:["invis_fld"]}



## SFX
playsound minecraft:item.trident.return block @a[distance=..7.5] ~ ~ ~ 100 .35 1



## Assign the Area Effect Cloud's team
scoreboard players operation @e[type=minecraft:area_effect_cloud,distance=..1,limit=1,sort=nearest] tbp_team = @s tbp_team



## Reset firework star usage scores
scoreboard players reset @s tbp_firestar_use



## Kill the executing item
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star",tag:{HideFlags:39,Enchantments:[{id:"minecraft:infinity",lvl:1}]}}},distance=..1,limit=1,sort=nearest]