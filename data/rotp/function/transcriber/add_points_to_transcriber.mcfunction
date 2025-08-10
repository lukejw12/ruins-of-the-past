execute store result score #current_stored temp run data get entity @s data.stored_item.components."minecraft:custom_data".stored_points

execute if score #current_stored temp matches ..0 run scoreboard players set #current_stored temp 0

execute if score #current_stored temp matches 80000.. run return 0


scoreboard players operation #current_stored temp += #orb_value temp

scoreboard players set #max_capacity_points temp 80000
execute if score #current_stored temp > #max_capacity_points temp run scoreboard players set #current_stored temp 80000

execute store result entity @s data.stored_item.components."minecraft:custom_data".stored_points int 1 run scoreboard players get #current_stored temp

execute store result score #verify_stored temp run data get entity @s data.stored_item.components."minecraft:custom_data".stored_points

function rotp:transcriber/update_transcriber_lore

scoreboard players reset #current_stored temp
scoreboard players reset #verify_stored temp
scoreboard players reset #max_capacity_points temp