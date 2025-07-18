execute store result score #player_levels temp run experience query @s levels

execute store result score #stored_levels temp run data get entity @s SelectedItem.components."minecraft:custom_data".stored_levels

execute if score #player_levels temp matches 0 run return 0

execute if score #stored_levels temp matches 150.. run return 0

scoreboard players set #max_capacity temp 150
scoreboard players operation #available_space temp = #max_capacity temp
scoreboard players operation #available_space temp -= #stored_levels temp

scoreboard players operation #levels_to_store temp = #player_levels temp
execute if score #levels_to_store temp > #available_space temp run scoreboard players operation #levels_to_store temp = #available_space temp

scoreboard players operation #new_stored_levels temp = #stored_levels temp
scoreboard players operation #new_stored_levels temp += #levels_to_store temp

scoreboard players operation #remaining_player_levels temp = #player_levels temp
scoreboard players operation #remaining_player_levels temp -= #levels_to_store temp

execute store result storage rotp:temp remaining_levels int 1 run scoreboard players get #remaining_player_levels temp
function rotp:transcriber/set_player_experience with storage rotp:temp

scoreboard players operation #stored_levels temp = #new_stored_levels temp

function rotp:transcriber/update_transcriber_display


scoreboard players reset #player_levels temp
scoreboard players reset #available_space temp
scoreboard players reset #levels_to_store temp
scoreboard players reset #new_stored_levels temp
scoreboard players reset #remaining_player_levels temp
scoreboard players reset #max_capacity temp