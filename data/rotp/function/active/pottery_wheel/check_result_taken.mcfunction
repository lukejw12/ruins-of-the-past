execute unless score @s has_result matches 0.. run scoreboard players set @s has_result 0

scoreboard players set #current_has_result temp 0

execute if items block ~ ~ ~ container.4 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_has_result temp 1
execute if items block ~ ~ ~ container.5 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_has_result temp 1
execute if items block ~ ~ ~ container.6 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_has_result temp 1
execute if items block ~ ~ ~ container.7 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_has_result temp 1
execute if items block ~ ~ ~ container.13 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_has_result temp 1
execute if items block ~ ~ ~ container.14 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_has_result temp 1

execute if score @s has_result matches 6 if score #current_has_result temp matches 0..5 run function rotp:active/pottery_wheel/consume_crafting_materials

execute if score #current_has_result temp matches 1.. run scoreboard players set @s has_result 1
execute if score #current_has_result temp matches 6 run scoreboard players set @s has_result 6
execute if score #current_has_result temp matches 0 run scoreboard players set @s has_result 0

scoreboard players reset #current_has_result temp