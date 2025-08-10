scoreboard players operation #level_squared temp = #input_level temp
scoreboard players operation #level_squared temp *= #input_level temp

scoreboard players set #nine temp 9
scoreboard players operation #nine_level_squared temp = #level_squared temp
scoreboard players operation #nine_level_squared temp *= #nine temp

scoreboard players set #three_twenty_five temp 325
scoreboard players operation #three_twenty_five_level temp = #input_level temp
scoreboard players operation #three_twenty_five_level temp *= #three_twenty_five temp

scoreboard players set #total_points_result temp 4440
scoreboard players operation #total_points_result temp += #nine_level_squared temp
scoreboard players operation #total_points_result temp -= #three_twenty_five_level temp

scoreboard players set #two temp 2
scoreboard players operation #total_points_result temp /= #two temp