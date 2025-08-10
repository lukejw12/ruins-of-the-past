scoreboard players operation #level_squared temp = #input_level temp
scoreboard players operation #level_squared temp *= #input_level temp

scoreboard players set #five temp 5
scoreboard players operation #five_level_squared temp = #level_squared temp
scoreboard players operation #five_level_squared temp *= #five temp

scoreboard players set #eighty_one temp 81
scoreboard players operation #eighty_one_level temp = #input_level temp
scoreboard players operation #eighty_one_level temp *= #eighty_one temp

scoreboard players set #total_points_result temp 720
scoreboard players operation #total_points_result temp += #five_level_squared temp
scoreboard players operation #total_points_result temp -= #eighty_one_level temp

scoreboard players set #two temp 2
scoreboard players operation #total_points_result temp /= #two temp