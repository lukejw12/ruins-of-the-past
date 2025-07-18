data modify storage rotp:temp enhanced_item.components."minecraft:attribute_modifiers" set value []
function rotp:active/rune_table/add_vanilla_attributes

function rotp:active/rune_table/get_equipment_slot

execute if data storage rotp:temp {current_rune_type:"swift"} run function rotp:active/rune_table/attributes/apply_swift
execute if data storage rotp:temp {current_rune_type:"luminous"} run function rotp:active/rune_table/attributes/apply_luminous
execute if data storage rotp:temp {current_rune_type:"hearty"} run function rotp:active/rune_table/attributes/apply_hearty
execute if data storage rotp:temp {current_rune_type:"fortified"} run function rotp:active/rune_table/attributes/apply_fortified
execute if data storage rotp:temp {current_rune_type:"berserker"} run function rotp:active/rune_table/attributes/apply_berserker
execute if data storage rotp:temp {current_rune_type:"blazing"} run function rotp:active/rune_table/attributes/apply_blazing
execute if data storage rotp:temp {current_rune_type:"shadowy"} run function rotp:active/rune_table/attributes/apply_shadowy
execute if data storage rotp:temp {current_rune_type:"aquatic"} run function rotp:active/rune_table/attributes/apply_aquatic
execute if data storage rotp:temp {current_rune_type:"venomous"} run function rotp:active/rune_table/attributes/apply_venomous
execute if data storage rotp:temp {current_rune_type:"thunderous"} run function rotp:active/rune_table/attributes/apply_thunderous
execute if data storage rotp:temp {current_rune_type:"earthen"} run function rotp:active/rune_table/attributes/apply_earthen
execute if data storage rotp:temp {current_rune_type:"vampiric"} run function rotp:active/rune_table/attributes/apply_vampiric