scoreboard players operation #level_squared temp = #input_level temp
scoreboard players operation #level_squared temp *= #input_level temp

scoreboard players set #six temp 6
scoreboard players operation #six_times_level temp = #input_level temp
scoreboard players operation #six_times_level temp *= #six temp

scoreboard players operation #total_points_result temp = #level_squared temp
scoreboard players operation #total_points_result temp += #six_times_level temp