execute if score #remaining_points temp < #points_per_level temp run return 0

scoreboard players operation #remaining_points temp -= #points_per_level temp
scoreboard players add #calculated_levels temp 1
scoreboard players add #points_per_level temp 9

execute if score #remaining_points temp matches 1.. run function rotp:transcriber/conversion/calculate_high_levels_loop