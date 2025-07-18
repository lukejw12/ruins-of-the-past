data modify storage rotp:temp enhanced_item set from storage rotp:temp input_item

execute unless data storage rotp:temp enhanced_item.components."minecraft:lore" run data modify storage rotp:temp enhanced_item.components."minecraft:lore" set value []
function rotp:active/rune_table/add_rune_lore
function rotp:active/rune_table/apply_rune_attributes
data modify storage rotp:temp enhanced_item.components."minecraft:custom_data".rune_result set value 1b

function rotp:active/rune_table/place_result_item