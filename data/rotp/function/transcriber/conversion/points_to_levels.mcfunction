scoreboard players operation #test_points temp = #input_points temp

scoreboard players set #calculated_levels temp 0

execute if score #test_points temp matches 0..1507 run function rotp:transcriber/conversion/calculate_levels_0_31
execute if score #test_points temp matches 1508.. run function rotp:transcriber/conversion/calculate_levels_32_plus

scoreboard players operation #output_levels temp = #calculated_levels temp