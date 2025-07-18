$execute if block ~$(x) ~$(y) ~$(z) loom run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) run function rotp:core/block/placed/table/place_table
execute if score #found_target temp matches 1 run return 0

$execute if block ~$(x) ~$(y) ~$(z) furnace run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) run function rotp:core/block/placed/table/place_rune_table
execute if score #found_target temp matches 1 run return 0

$execute if block ~$(x) ~$(y) ~$(z) smoker run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) run function rotp:core/block/placed/pottery_wheel/place_pottery_wheel
execute if score #found_target temp matches 1 run return 0

$execute if block ~$(x) ~$(y) ~$(z) barrier run scoreboard players set #found_target temp 1
$execute if score #found_target temp matches 1 run positioned ~$(x) ~$(y) ~$(z) align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pot/spawn_pot_display