data modify storage rotp:temp helmet_item set from entity @s equipment.head
execute if data storage rotp:temp helmet_item.components."minecraft:lore"[{text:"Luminous Rune:",color:"gray"}] run effect give @s night_vision 11 0 true
execute if data storage rotp:temp helmet_item.components."minecraft:lore"[{text:"Shadowy Rune:",color:"gray"}] run function rotp:rune_effects/clear_vision_effects