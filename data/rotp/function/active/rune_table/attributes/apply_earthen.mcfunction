execute if data storage rotp:temp {equipment_slot:"head"} run data modify storage rotp:temp modifier_data set value {attribute_type:"step_height",amount:0.7,operation:"add_value",modifier_id:"rotp:earthen_step_boost"}
execute if data storage rotp:temp {equipment_slot:"head"} run data modify storage rotp:temp modifier_data.equipment_slot set from storage rotp:temp equipment_slot
execute if data storage rotp:temp {equipment_slot:"head"} run function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data

execute if data storage rotp:temp input_item{id:"minecraft:wooden_sword"} run data modify storage rotp:temp modifier_data set value {attribute_type:"attack_damage",amount:0.005,operation:"add_multiplied_base",modifier_id:"rotp:earthen_damage_boost"}
execute if data storage rotp:temp input_item{id:"minecraft:wooden_sword"} run data modify storage rotp:temp modifier_data.equipment_slot set value "mainhand"
execute if data storage rotp:temp input_item{id:"minecraft:wooden_sword"} run function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data

execute if data storage rotp:temp input_item{id:"minecraft:stone_sword"} run data modify storage rotp:temp modifier_data set value {attribute_type:"attack_damage",amount:0.005,operation:"add_multiplied_base",modifier_id:"rotp:earthen_damage_boost"}
execute if data storage rotp:temp input_item{id:"minecraft:stone_sword"} run data modify storage rotp:temp modifier_data.equipment_slot set value "mainhand"
execute if data storage rotp:temp input_item{id:"minecraft:stone_sword"} run function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data

execute if data storage rotp:temp input_item{id:"minecraft:iron_sword"} run data modify storage rotp:temp modifier_data set value {attribute_type:"attack_damage",amount:0.005,operation:"add_multiplied_base",modifier_id:"rotp:earthen_damage_boost"}
execute if data storage rotp:temp input_item{id:"minecraft:iron_sword"} run data modify storage rotp:temp modifier_data.equipment_slot set value "mainhand"
execute if data storage rotp:temp input_item{id:"minecraft:iron_sword"} run function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data

execute if data storage rotp:temp input_item{id:"minecraft:golden_sword"} run data modify storage rotp:temp modifier_data set value {attribute_type:"attack_damage",amount:0.005,operation:"add_multiplied_base",modifier_id:"rotp:earthen_damage_boost"}
execute if data storage rotp:temp input_item{id:"minecraft:golden_sword"} run data modify storage rotp:temp modifier_data.equipment_slot set value "mainhand"
execute if data storage rotp:temp input_item{id:"minecraft:golden_sword"} run function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data

execute if data storage rotp:temp input_item{id:"minecraft:diamond_sword"} run data modify storage rotp:temp modifier_data set value {attribute_type:"attack_damage",amount:0.005,operation:"add_multiplied_base",modifier_id:"rotp:earthen_damage_boost"}
execute if data storage rotp:temp input_item{id:"minecraft:diamond_sword"} run data modify storage rotp:temp modifier_data.equipment_slot set value "mainhand"
execute if data storage rotp:temp input_item{id:"minecraft:diamond_sword"} run function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data

execute if data storage rotp:temp input_item{id:"minecraft:netherite_sword"} run data modify storage rotp:temp modifier_data set value {attribute_type:"attack_damage",amount:0.005,operation:"add_multiplied_base",modifier_id:"rotp:earthen_damage_boost"}
execute if data storage rotp:temp input_item{id:"minecraft:netherite_sword"} run data modify storage rotp:temp modifier_data.equipment_slot set value "mainhand"
execute if data storage rotp:temp input_item{id:"minecraft:netherite_sword"} run function rotp:active/rune_table/attributes/add_attribute_modifier with storage rotp:temp modifier_data
