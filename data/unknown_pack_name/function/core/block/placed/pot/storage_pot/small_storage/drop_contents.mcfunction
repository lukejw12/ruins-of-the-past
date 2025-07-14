execute store result storage unknown_pack_name:temp storage_id int 1 run scoreboard players get @s storage_pot_id
function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/get_storage with storage unknown_pack_name:temp
execute if score #stored_count temp matches 1.. run function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/drop_stored_items
function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/clear_storage with storage unknown_pack_name:temp

scoreboard players reset #stored_count temp