data modify storage unknown_pack_name:temp modifier_data set value {attribute_type:"max_health",amount:-2,operation:"add_value",modifier_id:"unknown_pack_name:vampiric_debuff"}
data modify storage unknown_pack_name:temp modifier_data.equipment_slot set value "mainhand"
function unknown_pack_name:active/rune_table/attributes/add_attribute_modifier with storage unknown_pack_name:temp modifier_data
