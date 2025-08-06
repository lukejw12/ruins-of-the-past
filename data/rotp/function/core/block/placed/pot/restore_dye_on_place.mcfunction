execute if data storage rotp:temp original_item_data.components."minecraft:custom_data"{carved_pot:1b} run data modify entity @s data.stored_item.components."minecraft:equippable" set from storage rotp:temp original_item_data.components."minecraft:equippable"
execute store result score #dye_color temp run data get storage rotp:temp original_item_data.components."minecraft:dyed_color"
execute store result storage rotp:temp current_dye_color int 1 run scoreboard players get #dye_color temp
function rotp:core/block/placed/pot/update_pot_displays
data modify entity @s data.stored_item.components."minecraft:custom_data".dyed set value 1b
data modify entity @s data.stored_item.components."minecraft:dyed_color" set from storage rotp:temp original_item_data.components."minecraft:dyed_color"
scoreboard players reset #dye_color temp
