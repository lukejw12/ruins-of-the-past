$data modify storage unknown_pack_name:linked_storage $(player_uuid).item_type set from storage unknown_pack_name:temp stored_item_data.id
$data modify storage unknown_pack_name:linked_storage $(player_uuid).item_data set from storage unknown_pack_name:temp stored_item_data
$data modify storage unknown_pack_name:linked_storage $(player_uuid).count set value $(new_count)