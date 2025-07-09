scoreboard players set #clicked_slot temp -1
execute unless items block ~ ~ ~ container.4 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 4
execute unless items block ~ ~ ~ container.5 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 5
execute unless items block ~ ~ ~ container.6 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 6
execute unless items block ~ ~ ~ container.7 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 7
execute unless items block ~ ~ ~ container.13 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 13
execute unless items block ~ ~ ~ container.14 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 14
execute unless items block ~ ~ ~ container.15 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 15
execute unless items block ~ ~ ~ container.16 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 16
execute unless items block ~ ~ ~ container.22 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 22
execute unless items block ~ ~ ~ container.23 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 23
execute unless items block ~ ~ ~ container.24 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 24
execute unless items block ~ ~ ~ container.25 stone[custom_data~{puzzle_piece:1b}] run scoreboard players set #clicked_slot temp 25
execute if score #clicked_slot temp matches 4 run scoreboard players set #clicked_pos temp 0
execute if score #clicked_slot temp matches 5 run scoreboard players set #clicked_pos temp 1
execute if score #clicked_slot temp matches 6 run scoreboard players set #clicked_pos temp 2
execute if score #clicked_slot temp matches 7 run scoreboard players set #clicked_pos temp 3
execute if score #clicked_slot temp matches 13 run scoreboard players set #clicked_pos temp 4
execute if score #clicked_slot temp matches 14 run scoreboard players set #clicked_pos temp 5
execute if score #clicked_slot temp matches 15 run scoreboard players set #clicked_pos temp 6
execute if score #clicked_slot temp matches 16 run scoreboard players set #clicked_pos temp 7
execute if score #clicked_slot temp matches 22 run scoreboard players set #clicked_pos temp 8
execute if score #clicked_slot temp matches 23 run scoreboard players set #clicked_pos temp 9
execute if score #clicked_slot temp matches 24 run scoreboard players set #clicked_pos temp 10
execute if score #clicked_slot temp matches 25 run scoreboard players set #clicked_pos temp 11
execute unless score #clicked_slot temp matches -1 run function unknown_pack_name:active/table/discovery/process_puzzle_click
execute unless score #clicked_slot temp matches -1 run function unknown_pack_name:active/table/discovery/place_puzzle_pieces

scoreboard players reset #clicked_slot temp
scoreboard players reset #clicked_pos temp