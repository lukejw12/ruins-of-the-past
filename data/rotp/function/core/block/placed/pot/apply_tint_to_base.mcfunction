execute if data entity @s item{components:{"minecraft:item_model":"rotp:pottery/pot_type_thin"}} run data modify entity @s item.components."minecraft:item_model" set value "rotp:pottery/tint/pottery/pot_type_thin"
execute if data entity @s item{components:{"minecraft:item_model":"rotp:pottery/pot_type_slab"}} run data modify entity @s item.components."minecraft:item_model" set value "rotp:pottery/tint/pottery/pot_type_slab"
execute if data entity @s item{components:{"minecraft:item_model":"rotp:pottery/pot_type_small"}} run data modify entity @s item.components."minecraft:item_model" set value "rotp:pottery/tint/pottery/pot_type_small"
execute if data entity @s item{components:{"minecraft:item_model":"rotp:pottery/pot_type_square"}} run data modify entity @s item.components."minecraft:item_model" set value "rotp:pottery/tint/pottery/pot_type_square"
execute if data entity @s item{components:{"minecraft:item_model":"rotp:pottery/pot_type_large"}} run data modify entity @s item.components."minecraft:item_model" set value "rotp:pottery/tint/pottery/pot_type_large"
execute if data entity @s item{components:{"minecraft:item_model":"rotp:pottery/pot_type_vase"}} run data modify entity @s item.components."minecraft:item_model" set value "rotp:pottery/tint/pottery/pot_type_vase"

data modify entity @s item.components."minecraft:dyed_color" set from storage rotp:temp current_dye_color