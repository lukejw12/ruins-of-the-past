scoreboard players reset @s explosion_timer

execute if data entity @s data.stored_item.components."minecraft:custom_data".trapped_pot run function unknown_pack_name:core/block/placed/pot/trapped_pot/trigger_trapped_pot
execute if data entity @s data.stored_item.components."minecraft:custom_data".storage_pot run function unknown_pack_name:core/block/placed/pot/trapped_pot/break_storage_pot
execute unless data entity @s data.stored_item.components."minecraft:custom_data".trapped_pot unless data entity @s data.stored_item.components."minecraft:custom_data".storage_pot run function unknown_pack_name:sub/handle_pot_break