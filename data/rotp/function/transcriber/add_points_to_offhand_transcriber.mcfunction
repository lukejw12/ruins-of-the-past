execute store result score #current_stored temp run data get entity @s equipment.offhand.components."minecraft:custom_data".stored_points

execute if score #current_stored temp matches ..0 run scoreboard players set #current_stored temp 0

execute if score #current_stored temp matches 80000.. run return 0

scoreboard players operation #current_stored temp += #orb_value temp

scoreboard players set #max_capacity_points temp 80000
execute if score #current_stored temp > #max_capacity_points temp run scoreboard players set #current_stored temp 80000

execute store result storage rotp:temp new_stored_points int 1 run scoreboard players get #current_stored temp
function rotp:transcriber/update_offhand_stored_points with storage rotp:temp

function rotp:transcriber/update_offhand_transcriber_lore

scoreboard players reset #current_stored temp
scoreboard players reset #max_capacity_points temp