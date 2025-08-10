execute store result storage rotp:temp stored_points int 1 run scoreboard players get #stored_points temp

scoreboard players operation #input_points temp = #stored_points temp
function rotp:transcriber/conversion/points_to_levels
scoreboard players operation #display_levels temp = #output_levels temp

execute store result storage rotp:temp display_levels int 1 run scoreboard players get #display_levels temp
function rotp:transcriber/apply_transcriber_data with storage rotp:temp