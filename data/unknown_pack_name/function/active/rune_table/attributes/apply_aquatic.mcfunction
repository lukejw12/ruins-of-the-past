
data modify storage unknown_pack_name:temp modifier_data set value {attribute_type:"oxygen_bonus",amount:1,operation:"add_value"}
data modify storage unknown_pack_name:temp modifier_data.equipment_slot set from storage unknown_pack_name:temp equipment_slot

execute if data storage unknown_pack_name:temp {equipment_slot:"head"} run data modify storage unknown_pack_name:temp modifier_data.modifier_id set value "unknown_pack_name:aquatic_head"

function unknown_pack_name:active/rune_table/attributes/add_attribute_modifier with storage unknown_pack_name:temp modifier_data