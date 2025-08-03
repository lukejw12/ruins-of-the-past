data modify entity @s Item set from storage rotp:temp broken_pedestal_data
execute if data storage rotp:temp broken_pedestal_data.components."minecraft:custom_data".dyed run function rotp:sub/restore_dyed_pedestal_item
execute unless data storage rotp:temp broken_pedestal_data.components."minecraft:custom_data".dyed run data modify entity @s Item set from storage rotp:temp broken_pedestal_data