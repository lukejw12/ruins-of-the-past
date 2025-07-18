function rotp:core/block/placed/pot/check_x_layer_pot {x:"0"}
execute unless score #found_target temp matches 1 run function rotp:core/block/placed/pot/check_x_layer_pot {x:"-0.1"}
execute unless score #found_target temp matches 1 run function rotp:core/block/placed/pot/check_x_layer_pot {x:"0.1"}