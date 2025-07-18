data modify storage rotp:temp modifier_data set value {attribute_type:"max_health",amount:-2,operation:"add_value",modifier_id:"rotp:shadowy_debuff"}
data modify storage rotp:temp modifier_data.equipment_slot set from storage rotp:temp equipment_slot
function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data
