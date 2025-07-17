
data modify storage unknown_pack_name:temp modifier_data set value {attribute_type:"max_health",amount:2,operation:"add_value"}
data modify storage unknown_pack_name:temp modifier_data.equipment_slot set from storage unknown_pack_name:temp equipment_slot

execute if data storage unknown_pack_name:temp {equipment_slot:"head"} run data modify storage unknown_pack_name:temp modifier_data.modifier_id set value "unknown_pack_name:hearty_head"
execute if data storage unknown_pack_name:temp {equipment_slot:"chest"} run data modify storage unknown_pack_name:temp modifier_data.modifier_id set value "unknown_pack_name:hearty_chest"
execute if data storage unknown_pack_name:temp {equipment_slot:"legs"} run data modify storage unknown_pack_name:temp modifier_data.modifier_id set value "unknown_pack_name:hearty_legs"
execute if data storage unknown_pack_name:temp {equipment_slot:"feet"} run data modify storage unknown_pack_name:temp modifier_data.modifier_id set value "unknown_pack_name:hearty_feet"

function unknown_pack_name:active/rune_table/attributes/add_attribute_modifier with storage unknown_pack_name:temp modifier_data