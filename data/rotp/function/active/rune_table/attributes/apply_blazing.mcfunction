data modify storage rotp:temp modifier_data set value {attribute_type:"burning_time",amount:-0.2,operation:"add_multiplied_base",modifier_id:"rotp:blazing_boost"}
data modify storage rotp:temp modifier_data.equipment_slot set from storage rotp:temp equipment_slot
function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data