scoreboard players operation #current_pedestal_id temp = @s pedestal_id
execute store result storage rotp:temp current_dye_color int 1 run scoreboard players get #dye_color temp

execute as @e[tag=pedestal_display,scores={pedestal_id=0..}] if score @s pedestal_id = #current_pedestal_id temp run data modify entity @s item.components."minecraft:item_model" set value "rotp:blocks/placed/tint/pedestal"
execute as @e[tag=pedestal_display,scores={pedestal_id=0..}] if score @s pedestal_id = #current_pedestal_id temp run data modify entity @s item.components."minecraft:dyed_color" set from storage rotp:temp current_dye_color

scoreboard players reset #current_pedestal_id temp