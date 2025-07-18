execute if score @s item_being_held matches 1 anchored eyes positioned ^ ^ ^ run function rotp:core/block/placed/table/raycast_start
execute if score @s item_being_held matches 2 anchored eyes positioned ^ ^ ^ run function rotp:core/block/placed/pot/raycast_start
advancement revoke @s only rotp:placed_table
