execute store result score #timer_seconds temp run data get storage unknown_pack_name:puzzle_game timer 1
scoreboard players add #timer_seconds temp 19
scoreboard players operation #timer_seconds temp /= #20 temp

execute if score #timer_seconds temp matches ..40 run function unknown_pack_name:active/table/discovery/show_timer_normal
scoreboard players reset #timer_seconds temp