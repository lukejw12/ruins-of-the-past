
data modify storage rotp:temp modifier_data set value {attribute_type:"oxygen_bonus",amount:1,operation:"add_value"}
data modify storage rotp:temp modifier_data.equipment_slot set from storage rotp:temp equipment_slot

execute if data storage rotp:temp {equipment_slot:"head"} run data modify storage rotp:temp modifier_data.modifier_id set value "rotp:aquatic_head"

function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data