
data modify storage unknown_pack_name:temp modifier_data set value {attribute_type:"armor_toughness",amount:0.1,operation:"add_multiplied_base"}
data modify storage unknown_pack_name:temp modifier_data.equipment_slot set from storage unknown_pack_name:temp equipment_slot

execute if data storage unknown_pack_name:temp {equipment_slot:"head"} run data modify storage unknown_pack_name:temp modifier_data.modifier_id set value "unknown_pack_name:fortified_head"
execute if data storage unknown_pack_name:temp {equipment_slot:"chest"} run data modify storage unknown_pack_name:temp modifier_data.modifier_id set value "unknown_pack_name:fortified_chest"
execute if data storage unknown_pack_name:temp {equipment_slot:"legs"} run data modify storage unknown_pack_name:temp modifier_data.modifier_id set value "unknown_pack_name:fortified_legs"
execute if data storage unknown_pack_name:temp {equipment_slot:"feet"} run data modify storage unknown_pack_name:temp modifier_data.modifier_id set value "unknown_pack_name:fortified_feet"

function unknown_pack_name:active/rune_table/attributes/add_attribute_modifier with storage unknown_pack_name:temp modifier_data