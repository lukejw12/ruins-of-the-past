$data modify storage rotp:temp clean_item_data set value {id:"$(id)",count:$(count)}
data modify storage rotp:temp clean_item_data.components set value {}
$data modify storage rotp:temp clean_item_data.components."minecraft:custom_data" set value {pot_item:1b,pot_type:"$(pot_type)",north_material:"$(north_material)",south_material:"$(south_material)",east_material:"$(east_material)",west_material:"$(west_material)"}
$data modify storage rotp:temp clean_item_data.components."minecraft:item_name" set value {text:"$(item_name_text)",color:"$(item_name_color)"}
$data modify storage rotp:temp clean_item_data.components."minecraft:lore" set value $(lore)
execute if data storage rotp:temp original_item_data.components."minecraft:item_model" run data modify storage rotp:temp clean_item_data.components."minecraft:item_model" set from storage rotp:temp original_item_data.components."minecraft:item_model"