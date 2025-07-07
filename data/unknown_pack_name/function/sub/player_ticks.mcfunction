execute if predicate unknown_pack_name:held_item/table run scoreboard players set @s item_being_held 1
execute unless predicate unknown_pack_name:held_item/table run scoreboard players set @s item_being_held 0
execute as @e[type=marker,distance=..10] at @s run function unknown_pack_name:sub/entity_ticks
execute if items entity @s inventory.* *[custom_data] run function unknown_pack_name:sub/item_clear/check_slot
execute if items entity @s hotbar.* *[custom_data] run function unknown_pack_name:sub/item_clear/check_slot
execute if items entity @s player.cursor *[custom_data] run function unknown_pack_name:sub/item_clear/check_slot
