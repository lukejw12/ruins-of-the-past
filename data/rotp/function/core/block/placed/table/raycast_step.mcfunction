scoreboard players set #found_target temp 0
execute if block ~ ~ ~ end_portal_frame run function rotp:core/block/placed/runestone/spawn_display
execute if block ~ ~ ~ end_portal_frame run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0 

execute if data block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".pedestal run function rotp:core/block/placed/pedestal/spawn_pedestal_display
execute if data block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".pedestal run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if data block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".research_workbench run function rotp:core/block/placed/table/place_table
execute if data block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".research_workbench run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if data block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".runic_altar run function rotp:core/block/placed/table/place_rune_table
execute if data block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".runic_altar run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if data block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".pottery_wheel run function rotp:core/block/placed/pottery_wheel/place_pottery_wheel
execute if data block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".pottery_wheel run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0
execute if block ~ ~ ~ structure_void if entity @e[type=marker,tag=pedestal_marker,distance=..0.5] run return 0
execute if block ~ ~ ~ structure_void align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pot/spawn_pot_display
execute if block ~ ~ ~ structure_void run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

function rotp:core/block/placed/table/check_six_faces
execute if score #found_target temp matches 1 run return 0

scoreboard players add @s precision_counter 1
execute if score @s precision_counter matches 3.. run scoreboard players set @s precision_counter 0
execute if score @s precision_counter matches 0 run function rotp:core/block/placed/table/check_cube

execute unless score #found_target temp matches 1 if score #steps temp matches 1.. run scoreboard players remove #steps temp 1
execute unless score #found_target temp matches 1 if score #steps temp matches 1.. positioned ^ ^ ^0.1 run function rotp:core/block/placed/table/raycast_step

execute if score #steps temp matches 0 run function rotp:core/block/placed/table/raycast_end
scoreboard players reset #found_target temp