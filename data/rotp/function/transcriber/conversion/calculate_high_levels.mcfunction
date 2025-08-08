scoreboard players set #base_32_points temp 2180
scoreboard players operation #remaining_points temp = #total_points temp
scoreboard players operation #remaining_points temp -= #base_32_points temp

scoreboard players set #calculated_levels temp 32
scoreboard players set #points_per_level temp 165

execute if score #remaining_points temp matches 1.. run function rotp:transcriber/conversion/calculate_high_levels_loop