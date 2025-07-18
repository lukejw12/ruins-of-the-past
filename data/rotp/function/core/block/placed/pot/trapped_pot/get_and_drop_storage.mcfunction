$execute unless data storage rotp:temp stored_item.components."minecraft:custom_data".linked_storage run data modify storage rotp:temp stored_item_data set from storage rotp:storage_pots $(storage_id).item_data
$execute unless data storage rotp:temp stored_item.components."minecraft:custom_data".linked_storage store result score #stored_count temp run data get storage rotp:storage_pots $(storage_id).count
execute unless data storage rotp:temp stored_item.components."minecraft:custom_data".linked_storage if score #stored_count temp matches 1.. run function rotp:core/block/placed/pot/storage_pot/split_and_drop
$execute unless data storage rotp:temp stored_item.components."minecraft:custom_data".linked_storage run data modify storage rotp:storage_pots $(storage_id).item_type set value ""
$execute unless data storage rotp:temp stored_item.components."minecraft:custom_data".linked_storage run data modify storage rotp:storage_pots $(storage_id).item_data set value {}
$execute unless data storage rotp:temp stored_item.components."minecraft:custom_data".linked_storage run data modify storage rotp:storage_pots $(storage_id).count set value 0
scoreboard players reset #stored_count temp