execute unless data entity @p[distance=..10] SelectedItem.id run return 0

data modify storage unknown_pack_name:temp player_item set from entity @p[distance=..10] SelectedItem

function unknown_pack_name:core/block/placed/pot/linked_storage/get_player_storage with storage unknown_pack_name:temp

execute if score #stored_count temp matches 0 run function unknown_pack_name:core/block/placed/pot/linked_storage/deposit_new
execute if score #stored_count temp matches 1.. run function unknown_pack_name:core/block/placed/pot/linked_storage/deposit_existing