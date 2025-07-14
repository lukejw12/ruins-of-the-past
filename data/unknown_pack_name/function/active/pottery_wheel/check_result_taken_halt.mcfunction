scoreboard players set #recipe_filled temp 0
execute if items block ~ ~ ~ container.1 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.9 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.11 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.19 #unknown_pack_name:pottery_materials run scoreboard players set #recipe_filled temp 1

execute if score #recipe_filled temp matches 1 run function unknown_pack_name:active/pottery_wheel/check_result_taken

scoreboard players reset #recipe_filled temp