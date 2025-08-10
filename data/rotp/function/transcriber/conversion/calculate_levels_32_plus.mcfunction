scoreboard players set #base_32_points temp 1628
scoreboard players operation #remaining_points temp = #test_points temp
scoreboard players operation #remaining_points temp -= #base_32_points temp

scoreboard players set #calculated_levels temp 32
scoreboard players set #points_per_level temp 121

execute if score #remaining_points temp matches 121.. run function rotp:transcriber/conversion/calculate_levels_loop