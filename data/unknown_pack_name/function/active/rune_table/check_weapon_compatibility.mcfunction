function unknown_pack_name:active/rune_table/check_sword_compatibility
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:wooden_axe"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:stone_axe"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:iron_axe"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:golden_axe"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:diamond_axe"} run scoreboard players set #compatible temp 1
execute if data storage unknown_pack_name:temp input_item{id:"minecraft:netherite_axe"} run scoreboard players set #compatible temp 1