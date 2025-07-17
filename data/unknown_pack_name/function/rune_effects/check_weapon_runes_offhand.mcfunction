
data modify storage unknown_pack_name:temp offhand_item set from entity @s equipment.offhand
execute if data storage unknown_pack_name:temp offhand_item.components."minecraft:lore"[{text:"Venomous Rune:",color:"gray"}] run tag @s add has_venomous_weapon
execute if data storage unknown_pack_name:temp offhand_item.components."minecraft:lore"[{text:"Thunderous Rune:",color:"gray"}] run tag @s add has_thunderous_weapon
execute if data storage unknown_pack_name:temp offhand_item.components."minecraft:lore"[{text:"Vampiric Rune:",color:"gray"}] run tag @s add has_vampiric_weapon