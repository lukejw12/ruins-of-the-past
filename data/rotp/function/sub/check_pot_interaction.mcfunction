execute if data entity @s interaction on target run tag @s add active_pot_target

execute if data entity @s interaction if entity @a[distance=..10,predicate=rotp:sneaking,tag=active_pot_target] if items entity @a[distance=..10,tag=active_pot_target] weapon.mainhand #rotp:dyes run function rotp:core/block/placed/pot/apply_dye
execute if data entity @s interaction if entity @a[distance=..10,predicate=rotp:sneaking,tag=active_pot_target] if items entity @a[distance=..10,tag=active_pot_target] weapon.mainhand minecraft:potion[minecraft:potion_contents="water"] run function rotp:core/block/placed/pot/remove_dye

execute if data entity @s data.stored_item.components."minecraft:custom_data".trapped_pot if data entity @s interaction unless entity @a[distance=..10,predicate=rotp:sneaking,tag=active_pot_target] run function rotp:core/block/placed/pot/trapped_pot/explode_on_click

execute if data entity @s data.stored_item.components."minecraft:custom_data".storage_pot if data entity @s interaction unless entity @a[distance=..10,predicate=rotp:sneaking,tag=active_pot_target] run function rotp:core/block/placed/pot/storage_pot/small_storage/handle_click
execute if data entity @s data.stored_item.components."minecraft:custom_data".storage_pot if data entity @s interaction if entity @a[distance=..10,predicate=rotp:sneaking,tag=active_pot_target] unless items entity @a[distance=..10,tag=active_pot_target] weapon.mainhand #rotp:dyes unless items entity @a[distance=..10,tag=active_pot_target] weapon.mainhand minecraft:potion[minecraft:potion_contents="water"] run function rotp:core/block/placed/pot/storage_pot/small_storage/handle_click

execute if data entity @s data.stored_item.components."minecraft:custom_data".linked_storage if data entity @s interaction unless entity @a[distance=..10,predicate=rotp:sneaking,tag=active_pot_target] run function rotp:core/block/placed/pot/linked_storage/handle_click
execute if data entity @s data.stored_item.components."minecraft:custom_data".linked_storage if data entity @s interaction if entity @a[distance=..10,predicate=rotp:sneaking,tag=active_pot_target] unless items entity @a[distance=..10,tag=active_pot_target] weapon.mainhand #rotp:dyes unless items entity @a[distance=..10,tag=active_pot_target] weapon.mainhand minecraft:potion[minecraft:potion_contents="water"] run function rotp:core/block/placed/pot/linked_storage/handle_click

execute if data entity @s data.stored_item.components."minecraft:custom_data".trapped_pot if data entity @s attack run function rotp:core/block/placed/pot/trapped_pot/handle_break

execute unless data entity @s data.stored_item.components."minecraft:custom_data".trapped_pot if data entity @s attack run function rotp:sub/handle_pot_break

execute on target run tag @s remove active_pot_target

data remove entity @s attack
data remove entity @s interaction