execute store result score #stored_points temp run data get entity @s data.stored_item.components."minecraft:custom_data".stored_points

data modify entity @s data.stored_item.components."minecraft:lore" set value []

execute store result storage rotp:temp stored_points int 1 run scoreboard players get #stored_points temp

function rotp:transcriber/apply_lore_with_macro with storage rotp:temp

scoreboard players operation #current_pedestal_id temp = @s pedestal_id
execute as @e[tag=pedestal_item_display] if score @s pedestal_id = #current_pedestal_id temp run data modify entity @s item set from entity @e[tag=pedestal_interaction,limit=1,sort=nearest] data.stored_item

scoreboard players reset #stored_points temp
scoreboard players reset #current_pedestal_id temp