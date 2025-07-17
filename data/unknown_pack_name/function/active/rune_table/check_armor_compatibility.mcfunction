function unknown_pack_name:active/rune_table/check_boots_compatibility
function unknown_pack_name:active/rune_table/check_helmet_compatibility
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:leather_chestplate"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:chainmail_chestplate"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:iron_chestplate"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:golden_chestplate"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:diamond_chestplate"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:netherite_chestplate"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:leather_leggings"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:chainmail_leggings"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:iron_leggings"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:golden_leggings"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:diamond_leggings"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:netherite_leggings"} run scoreboard players set #compatible temp 1