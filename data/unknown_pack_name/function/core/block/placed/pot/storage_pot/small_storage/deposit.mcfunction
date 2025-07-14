execute unless data entity @p[distance=..10] SelectedItem.id run return 0
execute store result storage unknown_pack_name:temp storage_id int 1 run scoreboard players get @s storage_pot_id

data modify storage unknown_pack_name:temp player_item set from entity @p[distance=..10] SelectedItem

function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/get_storage with storage unknown_pack_name:temp

execute if score #stored_count temp matches 0 run function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/deposit_new
execute if score #stored_count temp matches 1.. run function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/deposit_existing