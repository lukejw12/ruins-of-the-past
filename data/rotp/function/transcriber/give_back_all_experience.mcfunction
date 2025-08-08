scoreboard players operation #input_points temp = #stored_points temp
function rotp:transcriber/conversion/points_to_levels
scoreboard players operation #total_levels temp = #output_levels temp

scoreboard players operation #target_level temp = #total_levels temp
function rotp:transcriber/conversion/levels_to_points
scoreboard players operation #level_points temp = #output_points temp

scoreboard players operation #leftover_points temp = #stored_points temp
scoreboard players operation #leftover_points temp -= #level_points temp

execute if score #total_levels temp matches 1.. run function rotp:transcriber/add_remaining_levels_recursive

execute store result storage rotp:temp leftover_points int 1 run scoreboard players get #leftover_points temp
function rotp:transcriber/add_leftover_points with storage rotp:temp

scoreboard players reset #total_levels temp
scoreboard players reset #level_points temp
scoreboard players reset #leftover_points temp