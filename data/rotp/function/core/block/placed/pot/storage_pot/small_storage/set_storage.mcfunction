$data modify storage rotp:storage_pots $(storage_id).item_type set from storage rotp:temp stored_item_data.id
$data modify storage rotp:storage_pots $(storage_id).item_data set from storage rotp:temp stored_item_data
$data modify storage rotp:storage_pots $(storage_id).count set value $(new_count)
