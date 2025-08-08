execute store result score #input_level temp run scoreboard players get #target_level temp

scoreboard players set #total_points_result temp 0

execute if score #input_level temp matches 0..16 run function rotp:transcriber/conversion/convert_low_level_to_points

execute if score #input_level temp matches 17..31 run function rotp:transcriber/conversion/convert_mid_level_to_points

execute if score #input_level temp matches 32.. run function rotp:transcriber/conversion/convert_high_level_to_points

scoreboard players operation #output_points temp = #total_points_result temp