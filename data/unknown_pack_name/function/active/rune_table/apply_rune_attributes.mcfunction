# Initialize attribute modifiers if not present
execute unless data storage unknown_pack_name:temp enhanced_item.components."minecraft:attribute_modifiers" run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:attribute_modifiers" set value []

# Apply attributes based on rune type
execute if data storage unknown_pack_name:temp {current_rune_type:"hearty"} run function unknown_pack_name:active/rune_table/attributes/apply_hearty
execute if data storage unknown_pack_name:temp {current_rune_type:"swift"} run function unknown_pack_name:active/rune_table/attributes/apply_swift
execute if data storage unknown_pack_name:temp {current_rune_type:"luminous"} run function unknown_pack_name:active/rune_table/attributes/apply_luminous
execute if data storage unknown_pack_name:temp {current_rune_type:"fortified"} run function unknown_pack_name:active/rune_table/attributes/apply_fortified
execute if data storage unknown_pack_name:temp {current_rune_type:"berserker"} run function unknown_pack_name:active/rune_table/attributes/apply_berserker
execute if data storage unknown_pack_name:temp {current_rune_type:"earthen"} run function unknown_pack_name:active/rune_table/attributes/apply_earthen
execute if data storage unknown_pack_name:temp {current_rune_type:"aquatic"} run function unknown_pack_name:active/rune_table/attributes/apply_aquatic