scoreboard players set #clicked_slot temp -1
execute if items block ~ ~ ~ container.4 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 4
execute if items block ~ ~ ~ container.5 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 5
execute if items block ~ ~ ~ container.6 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 6
execute if items block ~ ~ ~ container.7 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 7
execute if items block ~ ~ ~ container.13 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 13
execute if items block ~ ~ ~ container.14 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 14
execute if items block ~ ~ ~ container.15 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 15
execute if items block ~ ~ ~ container.16 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 16
execute if items block ~ ~ ~ container.22 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 22
execute if items block ~ ~ ~ container.23 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 23
execute if items block ~ ~ ~ container.24 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 24
execute if items block ~ ~ ~ container.25 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #clicked_slot temp 25
execute unless score #clicked_slot temp matches -1 run function unknown_pack_name:active/table/discovery/process_word_guess
scoreboard players reset #clicked_slot temp
