scoreboard players set #compatible temp 0

execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Hearty Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Swift Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Luminous Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Fortified Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Berserker Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Blazing Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Shadowy Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Aquatic Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Thunderous Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Venomous Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Vampiric Rune:",color:"gray"}] run return 0
execute if data storage unknown_pack_name:temp input_item.components."minecraft:lore"[{text:"Earthen Rune:",color:"gray"}] run return 0

execute if data storage unknown_pack_name:temp {current_rune_type:"luminous"} run function unknown_pack_name:active/rune_table/check_helmet_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"swift"} run function unknown_pack_name:active/rune_table/check_boots_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"hearty"} run function unknown_pack_name:active/rune_table/check_all_armor_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"fortified"} run function unknown_pack_name:active/rune_table/check_all_armor_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"berserker"} run function unknown_pack_name:active/rune_table/check_all_armor_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"blazing"} run function unknown_pack_name:active/rune_table/check_shield_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"shadowy"} run function unknown_pack_name:active/rune_table/check_helmet_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"aquatic"} run function unknown_pack_name:active/rune_table/check_helmet_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"thunderous"} run function unknown_pack_name:active/rune_table/check_sword_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"venomous"} run function unknown_pack_name:active/rune_table/check_weapon_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"vampiric"} run function unknown_pack_name:active/rune_table/check_weapon_compatibility
execute if data storage unknown_pack_name:temp {current_rune_type:"earthen"} run scoreboard players set #compatible temp 1