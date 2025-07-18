$function rotp:core/block/placed/pot/check_y_layer_pot {x:"$(x)",y:"0"}
$execute unless score #found_target temp matches 1 run function rotp:core/block/placed/pot/check_y_layer_pot {x:"$(x)",y:"-0.1"}
$execute unless score #found_target temp matches 1 run function rotp:core/block/placed/pot/check_y_layer_pot {x:"$(x)",y:"0.1"}