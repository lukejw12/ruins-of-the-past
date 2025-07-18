
data modify storage rotp:temp modifier_data set value {attribute_type:"armor",amount:0.1,operation:"add_multiplied_base"}
data modify storage rotp:temp modifier_data.equipment_slot set from storage rotp:temp equipment_slot

execute if data storage rotp:temp {equipment_slot:"head"} run data modify storage rotp:temp modifier_data.modifier_id set value "rotp:berserker_head"
execute if data storage rotp:temp {equipment_slot:"chest"} run data modify storage rotp:temp modifier_data.modifier_id set value "rotp:berserker_chest"
execute if data storage rotp:temp {equipment_slot:"legs"} run data modify storage rotp:temp modifier_data.modifier_id set value "rotp:berserker_legs"
execute if data storage rotp:temp {equipment_slot:"feet"} run data modify storage rotp:temp modifier_data.modifier_id set value "rotp:berserker_feet"

function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data