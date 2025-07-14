data modify storage unknown_pack_name:temp pot_data set from entity @p[distance=..10,limit=1] SelectedItem.components."minecraft:custom_data"

execute if block ~ ~ ~ barrier align xyz positioned ~0.5 ~0.5 ~0.5 run function unknown_pack_name:core/block/placed/pot/spawn_pot_display
execute if block ~ ~ ~ barrier run return 0

function unknown_pack_name:core/block/placed/pot/check_six_faces_pot
execute if score #found_target temp matches 1 run return 0

scoreboard players add @s precision_counter 1
execute if score @s precision_counter matches 3.. run scoreboard players set @s precision_counter 0
execute if score @s precision_counter matches 0 run function unknown_pack_name:core/block/placed/pot/check_cube_pot

execute unless score #found_target temp matches 1 if score #steps temp matches 1.. run scoreboard players remove #steps temp 1
execute unless score #found_target temp matches 1 if score #steps temp matches 1.. positioned ^ ^ ^0.1 run function unknown_pack_name:core/block/placed/pot/raycast_step

execute if score #steps temp matches 0 run function unknown_pack_name:core/block/placed/table/raycast_end
scoreboard players reset #found_target temp