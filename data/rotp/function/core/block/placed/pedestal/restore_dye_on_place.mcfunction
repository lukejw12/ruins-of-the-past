execute store result score #dye_color temp run data get storage rotp:temp original_item_data.components."minecraft:dyed_color"
execute store result storage rotp:temp current_dye_color int 1 run scoreboard players get #dye_color temp

scoreboard players operation #current_pedestal_id temp = #next_pedestal_id temp
execute as @e[tag=pedestal_display,tag=needs_id,distance=..1.5] run data modify entity @s item.components."minecraft:item_model" set value "rotp:blocks/placed/tint/pedestal"
execute as @e[tag=pedestal_display,tag=needs_id,distance=..1.5] run data modify entity @s item.components."minecraft:dyed_color" set from storage rotp:temp current_dye_color

scoreboard players reset #current_pedestal_id temp
scoreboard players reset #dye_color temp