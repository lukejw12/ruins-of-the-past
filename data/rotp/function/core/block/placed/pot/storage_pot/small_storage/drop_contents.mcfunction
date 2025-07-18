execute store result storage rotp:temp storage_id int 1 run scoreboard players get @s storage_pot_id
function rotp:core/block/placed/pot/storage_pot/small_storage/get_storage with storage rotp:temp
execute if score #stored_count temp matches 1.. run function rotp:core/block/placed/pot/storage_pot/small_storage/drop_stored_items
function rotp:core/block/placed/pot/storage_pot/small_storage/clear_storage with storage rotp:temp

scoreboard players reset #stored_count temp