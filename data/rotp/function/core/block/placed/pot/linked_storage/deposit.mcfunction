execute unless data entity @p[distance=..10] SelectedItem.id run return 0

data modify storage rotp:temp player_item set from entity @p[distance=..10] SelectedItem

function rotp:core/block/placed/pot/linked_storage/get_player_storage with storage rotp:temp

execute if score #stored_count temp matches 0 run function rotp:core/block/placed/pot/linked_storage/deposit_new
execute if score #stored_count temp matches 1.. run function rotp:core/block/placed/pot/linked_storage/deposit_existing