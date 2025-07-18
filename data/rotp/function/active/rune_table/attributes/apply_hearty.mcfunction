
data modify storage rotp:temp modifier_data set value {attribute_type:"max_health",amount:2,operation:"add_value"}
data modify storage rotp:temp modifier_data.equipment_slot set from storage rotp:temp equipment_slot

execute if data storage rotp:temp {equipment_slot:"head"} run data modify storage rotp:temp modifier_data.modifier_id set value "rotp:hearty_head"
execute if data storage rotp:temp {equipment_slot:"chest"} run data modify storage rotp:temp modifier_data.modifier_id set value "rotp:hearty_chest"
execute if data storage rotp:temp {equipment_slot:"legs"} run data modify storage rotp:temp modifier_data.modifier_id set value "rotp:hearty_legs"
execute if data storage rotp:temp {equipment_slot:"feet"} run data modify storage rotp:temp modifier_data.modifier_id set value "rotp:hearty_feet"

function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data