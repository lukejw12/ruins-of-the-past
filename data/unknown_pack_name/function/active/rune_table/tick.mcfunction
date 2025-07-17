execute unless block ~ ~ ~ barrel run kill @s

scoreboard players add @s tick_counter 1

execute if score @s tick_counter matches 2 run function unknown_pack_name:active/rune_table/check_result_taken
execute if score @s tick_counter matches 2 run function unknown_pack_name:active/rune_table/fill_gui_slots
execute if score @s tick_counter matches 2 run function unknown_pack_name:active/rune_table/check_recipe
execute if score @s tick_counter matches 2 run data merge block ~ ~ ~ {CustomName:"Rune Table"}
execute if score @s tick_counter matches 1 run kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{gui_filler:1b}}}}]

execute if score @s tick_counter matches 2.. run scoreboard players set @s tick_counter 0