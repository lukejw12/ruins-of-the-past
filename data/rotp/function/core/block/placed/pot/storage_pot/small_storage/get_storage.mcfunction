$execute unless data storage rotp:storage_pots $(storage_id) run data modify storage rotp:storage_pots $(storage_id) set value {item_type:"",item_data:{},count:0}
$data modify storage rotp:temp current_item_type set from storage rotp:storage_pots $(storage_id).item_type
$execute store result score #stored_count temp run data get storage rotp:storage_pots $(storage_id).count