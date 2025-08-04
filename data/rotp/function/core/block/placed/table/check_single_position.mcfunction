$execute if data block ~$(x) ~$(y) ~$(z) Items[{Slot:0b}].components."minecraft:custom_data".research_workbench run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) run function rotp:core/block/placed/table/place_table
execute if score #found_target temp matches 1 run return 0

$execute if data block ~$(x) ~$(y) ~$(z) Items[{Slot:0b}].components."minecraft:custom_data".runic_altar run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) run function rotp:core/block/placed/table/place_rune_table
execute if score #found_target temp matches 1 run return 0

$execute if data block ~$(x) ~$(y) ~$(z) Items[{Slot:0b}].components."minecraft:custom_data".pottery_wheel run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) run function rotp:core/block/placed/pottery_wheel/place_pottery_wheel
execute if score #found_target temp matches 1 run return 0

$execute if block ~$(x) ~$(y) ~$(z) structure_void run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pot/spawn_pot_display
execute if score #found_target temp matches 1 run return 0

$execute if data block ~$(x) ~$(y) ~$(z) Items[{Slot:0b}].components."minecraft:custom_data".pedestal run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pedestal/spawn_pedestal_display
execute if score #found_target temp matches 1 run return 0

$execute if block ~$(x) ~$(y) ~$(z) end_portal_frame run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/runestone/spawn_display
execute if score #found_target temp matches 1 run return 0