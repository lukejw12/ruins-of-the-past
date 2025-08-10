execute store result score #player_total_points temp run experience query @s points

execute store result score #stored_points temp run data get entity @s SelectedItem.components."minecraft:custom_data".stored_points

execute if score #player_total_points temp matches 0 run return 0

scoreboard players set #max_capacity_points temp 79095

execute if score #stored_points temp >= #max_capacity_points temp run return 0

scoreboard players operation #available_space_points temp = #max_capacity_points temp
scoreboard players operation #available_space_points temp -= #stored_points temp

scoreboard players operation #points_to_store temp = #player_total_points temp
execute if score #points_to_store temp > #available_space_points temp run scoreboard players operation #points_to_store temp = #available_space_points temp

scoreboard players operation #new_stored_points temp = #stored_points temp
scoreboard players operation #new_stored_points temp += #points_to_store temp

scoreboard players operation #remaining_player_points temp = #player_total_points temp
scoreboard players operation #remaining_player_points temp -= #points_to_store temp

experience set @s 0 points

execute store result storage rotp:temp give_points int 1 run scoreboard players get #remaining_player_points temp
function rotp:transcriber/give_points with storage rotp:temp

scoreboard players operation #stored_points temp = #new_stored_points temp

function rotp:transcriber/update_transcriber_display

scoreboard players reset #player_total_points temp
scoreboard players reset #available_space_points temp
scoreboard players reset #points_to_store temp
scoreboard players reset #new_stored_points temp
scoreboard players reset #remaining_player_points temp
scoreboard players reset #max_capacity_points temp