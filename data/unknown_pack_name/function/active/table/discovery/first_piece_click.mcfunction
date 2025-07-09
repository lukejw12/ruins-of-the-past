execute store result storage unknown_pack_name:puzzle_game first_click int 1 run scoreboard players get #clicked_pos temp

execute if score #clicked_pos temp matches 0 run item modify block ~ ~ ~ container.4 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 1 run item modify block ~ ~ ~ container.5 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 2 run item modify block ~ ~ ~ container.6 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 3 run item modify block ~ ~ ~ container.7 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 4 run item modify block ~ ~ ~ container.13 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 5 run item modify block ~ ~ ~ container.14 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 6 run item modify block ~ ~ ~ container.15 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 7 run item modify block ~ ~ ~ container.16 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 8 run item modify block ~ ~ ~ container.22 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 9 run item modify block ~ ~ ~ container.23 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 10 run item modify block ~ ~ ~ container.24 unknown_pack_name:puzzle_selected
execute if score #clicked_pos temp matches 11 run item modify block ~ ~ ~ container.25 unknown_pack_name:puzzle_selected