execute as @e[type=interaction,distance=..20] at @s run function rotp:sub/interaction_tick

execute if predicate rotp:held_item/table run scoreboard players set @s item_being_held 1
execute if predicate rotp:held_item/pottery_wheel run scoreboard players set @s item_being_held 1
execute if predicate rotp:held_item/rune_table run scoreboard players set @s item_being_held 1
execute if predicate rotp:held_item/pot run scoreboard players set @s item_being_held 2
execute if predicate rotp:held_item/pedestal run scoreboard players set @s item_being_held 1
execute unless predicate rotp:held_item/table unless predicate rotp:held_item/pedestal unless predicate rotp:held_item/pottery_wheel unless predicate rotp:held_item/pot unless predicate rotp:held_item/rune_table run scoreboard players set @s item_being_held 0
execute as @e[type=marker,tag=table,distance=..10] at @s run function rotp:sub/entity_ticks
execute as @e[type=marker,tag=pottery_wheel,distance=..10] at @s run function rotp:sub/entity_ticks
execute as @e[type=marker,tag=rune_table,distance=..10] at @s run function rotp:sub/entity_ticks
function rotp:core/block/placed/pedestal/tick
scoreboard players enable @s dynamic_lighting



execute if items entity @s inventory.* *[custom_data~{gui_filler:1b}] run function rotp:sub/item_clear/check_slot
execute if items entity @s inventory.* *[custom_data~{discovery_result:1b}] run function rotp:sub/item_clear/check_slot
execute if items entity @s inventory.* *[custom_data~{recipe_result:1b}] run function rotp:sub/item_clear/check_slot
execute if items entity @s inventory.* *[custom_data~{final_reward:1b}] run function rotp:sub/item_clear/check_slot

execute if items entity @s hotbar.* *[custom_data~{gui_filler:1b}] run function rotp:sub/item_clear/check_slot
execute if items entity @s hotbar.* *[custom_data~{discovery_result:1b}] run function rotp:sub/item_clear/check_slot
execute if items entity @s hotbar.* *[custom_data~{recipe_result:1b}] run function rotp:sub/item_clear/check_slot
execute if items entity @s hotbar.* *[custom_data~{final_reward:1b}] run function rotp:sub/item_clear/check_slot

execute if items entity @s inventory.* test_block[custom_data~{ancient_tablet:1b,discovery_level:1}] run function rotp:sub/item_clear/check_slot
execute if items entity @s inventory.* test_block[custom_data~{ancient_tablet:1b,discovery_level:2}] run function rotp:sub/item_clear/check_slot
execute if items entity @s inventory.* test_block[custom_data~{ancient_tablet:1b,discovery_level:3}] run function rotp:sub/item_clear/check_slot
execute if items entity @s inventory.* test_block[custom_data~{ancient_tablet:1b,tablet_uses:3}] run function rotp:sub/item_clear/check_slot
execute if items entity @s hotbar.* test_block[custom_data~{ancient_tablet:1b,discovery_level:1}] run function rotp:sub/item_clear/check_slot
execute if items entity @s hotbar.* test_block[custom_data~{ancient_tablet:1b,tablet_uses:3}] run function rotp:sub/item_clear/check_slot
execute if items entity @s player.cursor test_block[custom_data~{ancient_tablet:1b,discovery_level:1}] run function rotp:sub/item_clear/check_slot
execute if items entity @s player.cursor test_block[custom_data~{ancient_tablet:1b,tablet_uses:3}] run function rotp:sub/item_clear/check_slot

execute if items entity @s player.cursor *[custom_data~{gui_filler:1b}] run function rotp:sub/item_clear/check_slot
execute if items entity @s player.cursor *[custom_data~{discovery_result:1b}] run function rotp:sub/item_clear/check_slot
execute if items entity @s player.cursor *[custom_data~{recipe_result:1b}] run function rotp:sub/item_clear/check_slot
execute if items entity @s player.cursor *[custom_data~{final_reward:1b}] run function rotp:sub/item_clear/check_slot