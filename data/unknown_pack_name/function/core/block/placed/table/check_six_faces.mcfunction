execute if block ~0.1 ~ ~ loom positioned ~0.1 ~ ~ run function unknown_pack_name:core/block/placed/table/place_table
execute if block ~0.1 ~ ~ furnace positioned ~0.1 ~ ~ run function unknown_pack_name:core/block/placed/table/place_rune_table
execute if block ~0.1 ~ ~ smoker positioned ~0.1 ~ ~ run function unknown_pack_name:core/block/placed/pottery_wheel/place_pottery_wheel
execute if block ~0.1 ~ ~ #unknown_pack_name:valid_function run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~-0.1 ~ ~ loom positioned ~-0.1 ~ ~ run function unknown_pack_name:core/block/placed/table/place_table
execute if block ~-0.1 ~ ~ furnace positioned ~-0.1 ~ ~ run function unknown_pack_name:core/block/placed/table/place_rune_table
execute if block ~-0.1 ~ ~ smoker positioned ~-0.1 ~ ~ run function unknown_pack_name:core/block/placed/pottery_wheel/place_pottery_wheel
execute if block ~-0.1 ~ ~ #unknown_pack_name:valid_function run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~ ~0.1 ~ loom positioned ~ ~0.1 ~ run function unknown_pack_name:core/block/placed/table/place_table
execute if block ~ ~0.1 ~ furnace positioned ~ ~0.1 ~ run function unknown_pack_name:core/block/placed/table/place_rune_table
execute if block ~ ~0.1 ~ smoker positioned ~ ~0.1 ~ run function unknown_pack_name:core/block/placed/pottery_wheel/place_pottery_wheel
execute if block ~ ~0.1 ~ #unknown_pack_name:valid_function run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~ ~-0.1 ~ loom positioned ~ ~-0.1 ~ run function unknown_pack_name:core/block/placed/table/place_table
execute if block ~ ~-0.1 ~ furnace positioned ~ ~-0.1 ~ run function unknown_pack_name:core/block/placed/table/place_rune_table
execute if block ~ ~-0.1 ~ smoker positioned ~ ~-0.1 ~ run function unknown_pack_name:core/block/placed/pottery_wheel/place_pottery_wheel
execute if block ~ ~-0.1 ~ #unknown_pack_name:valid_function run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~ ~ ~0.1 loom positioned ~ ~ ~0.1 run function unknown_pack_name:core/block/placed/table/place_table
execute if block ~ ~ ~0.1 furnace positioned ~ ~ ~0.1 run function unknown_pack_name:core/block/placed/table/place_rune_table
execute if block ~ ~ ~0.1 smoker positioned ~ ~ ~0.1 run function unknown_pack_name:core/block/placed/pottery_wheel/place_pottery_wheel
execute if block ~ ~ ~0.1 #unknown_pack_name:valid_function run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~ ~ ~-0.1 loom positioned ~ ~ ~-0.1 run function unknown_pack_name:core/block/placed/table/place_table
execute if block ~ ~ ~-0.1 furnace positioned ~ ~ ~-0.1 run function unknown_pack_name:core/block/placed/table/place_rune_table
execute if block ~ ~ ~-0.1 smoker positioned ~ ~ ~-0.1 run function unknown_pack_name:core/block/placed/pottery_wheel/place_pottery_wheel
execute if block ~ ~ ~-0.1 #unknown_pack_name:valid_function run scoreboard players set #found_target temp 1