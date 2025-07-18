$function rotp:core/block/placed/table/check_single_position {x:"$(x)",y:"$(y)",z:"0"}
$execute unless score #found_target temp matches 1 run function rotp:core/block/placed/table/check_single_position {x:"$(x)",y:"$(y)",z:"-0.1"}
$execute unless score #found_target temp matches 1 run function rotp:core/block/placed/table/check_single_position {x:"$(x)",y:"$(y)",z:"0.1"}