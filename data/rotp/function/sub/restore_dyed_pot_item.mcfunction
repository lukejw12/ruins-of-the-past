data modify entity @s Item set from storage rotp:temp broken_pot_data

execute if data storage rotp:temp broken_pot_data.components."minecraft:custom_data"{pot_type:"thin"} run data modify entity @s Item.components."minecraft:item_model" set value "rotp:pottery/tint/full/pot_type_thin_full"
execute if data storage rotp:temp broken_pot_data.components."minecraft:custom_data"{pot_type:"slab"} run data modify entity @s Item.components."minecraft:item_model" set value "rotp:pottery/tint/full/pot_type_slab_full"
execute if data storage rotp:temp broken_pot_data.components."minecraft:custom_data"{pot_type:"small"} run data modify entity @s Item.components."minecraft:item_model" set value "rotp:pottery/tint/full/pot_type_small_full"
execute if data storage rotp:temp broken_pot_data.components."minecraft:custom_data"{pot_type:"square"} run data modify entity @s Item.components."minecraft:item_model" set value "rotp:pottery/tint/full/pot_type_square_full"