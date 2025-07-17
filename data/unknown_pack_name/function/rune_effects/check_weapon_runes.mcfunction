
data modify storage unknown_pack_name:temp mainhand_item set from entity @s SelectedItem

execute if data storage unknown_pack_name:temp mainhand_item.components."minecraft:lore"[{text:"Venomous Rune:",color:"gray"}] run tag @s add has_venomous_weapon
execute if data storage unknown_pack_name:temp mainhand_item.components."minecraft:lore"[{text:"Thunderous Rune:",color:"gray"}] run tag @s add has_thunderous_weapon
execute if data storage unknown_pack_name:temp mainhand_item.components."minecraft:lore"[{text:"Vampiric Rune:",color:"gray"}] run tag @s add has_vampiric_weapon

execute unless data storage unknown_pack_name:temp mainhand_item.components."minecraft:lore"[{text:"Venomous Rune:",color:"gray"}] run tag @s remove has_venomous_weapon
execute unless data storage unknown_pack_name:temp mainhand_item.components."minecraft:lore"[{text:"Thunderous Rune:",color:"gray"}] run tag @s remove has_thunderous_weapon
execute unless data storage unknown_pack_name:temp mainhand_item.components."minecraft:lore"[{text:"Vampiric Rune:",color:"gray"}] run tag @s remove has_vampiric_weapon