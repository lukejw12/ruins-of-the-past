$execute unless data storage rotp:linked_storage $(player_uuid) run data modify storage rotp:linked_storage $(player_uuid) set value {item_type:"",item_data:{},count:0}
$data modify storage rotp:temp current_item_type set from storage rotp:linked_storage $(player_uuid).item_type
$execute store result score #stored_count temp run data get storage rotp:linked_storage $(player_uuid).count