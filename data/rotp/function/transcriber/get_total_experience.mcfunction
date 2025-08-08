execute store result score #player_levels temp run experience query @s levels
execute store result score #player_points temp run experience query @s points

scoreboard players operation #target_level temp = #player_levels temp
function rotp:transcriber/conversion/levels_to_points
scoreboard players operation #total_player_points temp = #output_points temp
scoreboard players operation #total_player_points temp += #player_points temp