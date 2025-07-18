execute store result storage rotp:puzzle_game first_click int 1 run scoreboard players get #clicked_pos temp

execute if score #clicked_pos temp matches 0 run item modify block ~ ~ ~ container.4 rotp:puzzle_selected
execute if score #clicked_pos temp matches 1 run item modify block ~ ~ ~ container.5 rotp:puzzle_selected
execute if score #clicked_pos temp matches 2 run item modify block ~ ~ ~ container.6 rotp:puzzle_selected
execute if score #clicked_pos temp matches 3 run item modify block ~ ~ ~ container.7 rotp:puzzle_selected
execute if score #clicked_pos temp matches 4 run item modify block ~ ~ ~ container.13 rotp:puzzle_selected
execute if score #clicked_pos temp matches 5 run item modify block ~ ~ ~ container.14 rotp:puzzle_selected
execute if score #clicked_pos temp matches 6 run item modify block ~ ~ ~ container.15 rotp:puzzle_selected
execute if score #clicked_pos temp matches 7 run item modify block ~ ~ ~ container.16 rotp:puzzle_selected
execute if score #clicked_pos temp matches 8 run item modify block ~ ~ ~ container.22 rotp:puzzle_selected
execute if score #clicked_pos temp matches 9 run item modify block ~ ~ ~ container.23 rotp:puzzle_selected
execute if score #clicked_pos temp matches 10 run item modify block ~ ~ ~ container.24 rotp:puzzle_selected
execute if score #clicked_pos temp matches 11 run item modify block ~ ~ ~ container.25 rotp:puzzle_selected