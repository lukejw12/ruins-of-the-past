# Create the enhanced item with rune applied
data modify storage unknown_pack_name:temp enhanced_item set from storage unknown_pack_name:temp input_item

# Add rune effect to lore
execute unless data storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" set value []

function unknown_pack_name:active/rune_table/add_rune_lore
function unknown_pack_name:active/rune_table/apply_rune_attributes

# Mark as rune result
data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:custom_data".rune_result set value 1b

function unknown_pack_name:active/rune_table/place_result_item