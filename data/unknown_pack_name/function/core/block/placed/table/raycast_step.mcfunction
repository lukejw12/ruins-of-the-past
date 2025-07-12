execute if block ~ ~ ~ loom run function unknown_pack_name:core/block/placed/table/place_table
execute if block ~ ~ ~ smoker run function unknown_pack_name:core/block/placed/pottery_wheel/place_pottery_wheel
execute unless block ~ ~ ~ #unknown_pack_name:valid_function run function unknown_pack_name:core/block/placed/table/check_cube
execute unless block ~ ~ ~ #unknown_pack_name:valid_function if score #steps temp matches 1.. run scoreboard players remove #steps temp 1
execute unless block ~ ~ ~ #unknown_pack_name:valid_function if score #steps temp matches 1.. positioned ^ ^ ^0.2 run function unknown_pack_name:core/block/placed/table/raycast_step
execute if score #steps temp matches 0 run function unknown_pack_name:core/block/placed/table/raycast_end