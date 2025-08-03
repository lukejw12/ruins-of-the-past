scoreboard players operation #current_pedestal_id temp = @s pedestal_id

execute as @e[tag=pedestal_display,scores={pedestal_id=0..}] if score @s pedestal_id = #current_pedestal_id temp run data modify entity @s item.components."minecraft:item_model" set value "rotp:blocks/placed/pedestal"
execute as @e[tag=pedestal_display,scores={pedestal_id=0..}] if score @s pedestal_id = #current_pedestal_id temp run data remove entity @s item.components."minecraft:dyed_color"

scoreboard players reset #current_pedestal_id temp