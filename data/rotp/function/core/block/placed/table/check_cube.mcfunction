function rotp:core/block/placed/table/check_x_layer {x:"0"}
execute unless score #found_target temp matches 1 run function rotp:core/block/placed/table/check_x_layer {x:"-1"}
execute unless score #found_target temp matches 1 run function rotp:core/block/placed/table/check_x_layer {x:"1"}