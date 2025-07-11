execute if predicate unknown_pack_name:held_item/table run scoreboard players set @s item_being_held 1
execute if predicate unknown_pack_name:held_item/pottery_wheel run scoreboard players set @s item_being_held 1
execute if predicate unknown_pack_name:held_item/pot run scoreboard players set @s item_being_held 2
execute unless predicate unknown_pack_name:held_item/table unless predicate unknown_pack_name:held_item/pottery_wheel unless predicate unknown_pack_name:held_item/pot run scoreboard players set @s item_being_held 0
execute as @e[type=marker,tag=table,distance=..10] at @s run function unknown_pack_name:sub/entity_ticks
execute as @e[type=marker,tag=pottery_wheel,distance=..10] at @s run function unknown_pack_name:sub/entity_ticks
execute unless items entity @s inventory.* stone[custom_data={ancient_tablet:1b}] if items entity @s inventory.* *[custom_data] run function unknown_pack_name:sub/item_clear/check_slot
execute unless items entity @s hotbar.* stone[custom_data={ancient_tablet:1b}] if items entity @s hotbar.* *[custom_data] run function unknown_pack_name:sub/item_clear/check_slot
execute if items entity @s inventory.* stone[custom_data~{ancient_tablet:1b,discovery_level:1}] run function unknown_pack_name:sub/item_clear/check_slot
execute if items entity @s inventory.* stone[custom_data~{ancient_tablet:1b,tablet_uses:3}] run function unknown_pack_name:sub/item_clear/check_slot
execute if items entity @s hotbar.* stone[custom_data~{ancient_tablet:1b,discovery_level:1}] run function unknown_pack_name:sub/item_clear/check_slot
execute if items entity @s hotbar.* stone[custom_data~{ancient_tablet:1b,tablet_uses:3}] run function unknown_pack_name:sub/item_clear/check_slot
execute if items entity @s player.cursor *[custom_data] run function unknown_pack_name:sub/item_clear/check_slot