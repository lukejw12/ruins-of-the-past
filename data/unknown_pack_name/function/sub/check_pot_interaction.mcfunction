execute if data entity @s data.stored_item.components."minecraft:custom_data".trapped_pot if data entity @s interaction run function unknown_pack_name:core/block/placed/pot/trapped_pot/explode_on_click

execute if data entity @s data.stored_item.components."minecraft:custom_data".storage_pot if data entity @s interaction run function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/handle_click

execute if data entity @s data.stored_item.components."minecraft:custom_data".trapped_pot if data entity @s attack run function unknown_pack_name:core/block/placed/pot/trapped_pot/handle_break

execute unless data entity @s data.stored_item.components."minecraft:custom_data".trapped_pot if data entity @s attack run function unknown_pack_name:sub/handle_pot_break

data remove entity @s attack
data remove entity @s interaction