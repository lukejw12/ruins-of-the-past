$data modify storage rotp:linked_storage $(player_uuid).item_type set from storage rotp:temp stored_item_data.id
$data modify storage rotp:linked_storage $(player_uuid).item_data set from storage rotp:temp stored_item_data
$data modify storage rotp:linked_storage $(player_uuid).count set value $(new_count)