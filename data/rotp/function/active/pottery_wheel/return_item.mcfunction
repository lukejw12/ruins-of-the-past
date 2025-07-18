$data modify storage rotp:temp return_item set from block ~ ~ ~ Items[{Slot:$(slot)b}]

scoreboard players set #recipe_filled temp 0
execute if items block ~ ~ ~ container.1 #rotp:pottery_materials if items block ~ ~ ~ container.9 #rotp:pottery_materials if items block ~ ~ ~ container.11 #rotp:pottery_materials if items block ~ ~ ~ container.19 #rotp:pottery_materials run scoreboard players set #recipe_filled temp 1


execute if data storage rotp:temp return_item.components."minecraft:custom_data"{pot_item:1b} if data storage rotp:temp return_item.components."minecraft:custom_data"{display_item:1b} if score #recipe_filled temp matches 1 run scoreboard players set @s should_consume 1

execute if data entity @p[distance=..10] SelectedItem.components."minecraft:custom_data"{pot_item:1b} unless data storage rotp:temp return_item.components."minecraft:custom_data"{pottery_result:1b} run data modify storage rotp:temp return_item.count set value 64

function rotp:active/pottery_wheel/spawn_return_item with storage rotp:temp return_item
$item replace block ~ ~ ~ container.$(slot) with air

scoreboard players reset #recipe_filled temp