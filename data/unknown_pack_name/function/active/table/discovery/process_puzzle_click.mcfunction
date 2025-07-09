execute store result score #first_click_pos temp run data get storage unknown_pack_name:puzzle_game first_click 1
execute if score #first_click_pos temp = #clicked_pos temp unless score #first_click_pos temp matches -1 run return 0
execute if score #first_click_pos temp matches -1 run function unknown_pack_name:active/table/discovery/first_piece_click
execute unless score #first_click_pos temp matches -1 run function unknown_pack_name:active/table/discovery/second_piece_click
scoreboard players reset #first_click_pos temp