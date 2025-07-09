scoreboard players set #glass_pane_found temp 0
execute if items block ~ ~ ~ container.4 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.5 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.6 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.7 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.13 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.14 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.15 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.16 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.22 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.23 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.24 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if items block ~ ~ ~ container.25 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #glass_pane_found temp 1
execute if score #glass_pane_found temp matches 1 run function unknown_pack_name:active/table/discovery/handle_puzzle_click

scoreboard players reset #glass_pane_found temp