data modify entity @s Item.id set value "barrier"
data modify entity @s Item.components."minecraft:custom_data" set from storage unknown_pack_name:temp broken_pot_data
data modify entity @s Item.components."minecraft:item_name" set from storage unknown_pack_name:temp broken_pot_data.item_name
data modify entity @s Item.components."minecraft:lore" set from storage unknown_pack_name:temp broken_pot_data.lore

execute if data storage unknown_pack_name:temp broken_pot_data.pot_type run data modify entity @s Item.components."minecraft:item_model" set value "unknown_pack_name:pottery/pot_item"