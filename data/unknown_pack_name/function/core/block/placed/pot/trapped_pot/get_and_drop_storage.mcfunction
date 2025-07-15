$data modify storage unknown_pack_name:temp stored_item_data set from storage unknown_pack_name:storage_pots $(storage_id).item_data
$execute store result score #stored_count temp run data get storage unknown_pack_name:storage_pots $(storage_id).count
execute if score #stored_count temp matches 1.. run function unknown_pack_name:core/block/placed/pot/storage_pot/split_and_drop
$data modify storage unknown_pack_name:storage_pots $(storage_id).item_type set value ""
$data modify storage unknown_pack_name:storage_pots $(storage_id).item_data set value {}
$data modify storage unknown_pack_name:storage_pots $(storage_id).count set value 0
scoreboard players reset #stored_count temp