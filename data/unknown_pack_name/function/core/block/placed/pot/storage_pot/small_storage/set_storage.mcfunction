$data modify storage unknown_pack_name:storage_pots $(storage_id).item_type set from storage unknown_pack_name:temp stored_item_data.id
$data modify storage unknown_pack_name:storage_pots $(storage_id).item_data set from storage unknown_pack_name:temp stored_item_data
$data modify storage unknown_pack_name:storage_pots $(storage_id).count set value $(new_count)
