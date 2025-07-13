execute unless score @s has_result matches 0.. run scoreboard players set @s has_result 0

execute if items block ~ ~ ~ container.4 barrier[custom_data~{display_item:1b}] run scoreboard players set #current_has_result temp 1
execute unless items block ~ ~ ~ container.4 barrier[custom_data~{display_item:1b}] run scoreboard players set #current_has_result temp 0
execute if score @s has_result matches 1 if score #current_has_result temp matches 0 run function unknown_pack_name:active/pottery_wheel/consume_crafting_materials

scoreboard players operation @s has_result = #current_has_result temp
scoreboard players reset #current_has_result temp