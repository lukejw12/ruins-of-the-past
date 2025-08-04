$function rotp:core/block/placed/table/check_y_layer {x:"$(x)",y:"0"}
$execute unless score #found_target temp matches 1 run function rotp:core/block/placed/table/check_y_layer {x:"$(x)",y:"-1"}
$execute unless score #found_target temp matches 1 run function rotp:core/block/placed/table/check_y_layer {x:"$(x)",y:"1"}
