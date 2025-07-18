execute store result score #timer_seconds temp run data get storage rotp:puzzle_game timer 1
scoreboard players add #timer_seconds temp 19
scoreboard players operation #timer_seconds temp /= #20 temp

execute if score #timer_seconds temp matches ..40 run function rotp:active/table/discovery/show_timer_normal
scoreboard players reset #timer_seconds temp