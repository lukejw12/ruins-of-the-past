execute unless block ~ ~ ~ barrel run function rotp:active/table/cleanup_table
execute unless block ~ ~ ~ barrel[open=true] run return 0

execute if block ~ ~ ~ barrel[open=true] run function rotp:active/table/table_active

execute if score @s puzzle_click_cooldown matches 1.. run scoreboard players remove @s puzzle_click_cooldown 1
execute if score @s puzzle_timer matches 1.. run scoreboard players remove @s puzzle_timer 1
execute if score @s puzzle_timer matches 1.. run execute store result storage rotp:puzzle_game timer int 1 run scoreboard players get @s puzzle_timer
execute if score @s puzzle_timer matches 0 if data storage rotp:puzzle_game {puzzle_active:1b} run function rotp:active/table/discovery/puzzle_timeout
execute if data storage rotp:puzzle_game {puzzle_active:1b} run function rotp:active/table/discovery/update_puzzle_info_display
execute if score @s clean_tablets_next_tick matches 1 run function rotp:active/table/discovery/delayed_tablet_clean
execute if score @s completion_delay matches 1.. run scoreboard players remove @s completion_delay 1
execute if score @s completion_delay matches 0 if data storage rotp:puzzle_game {type:"dig_site"} run function rotp:active/table/discovery/generate_dig_site_final_reward
execute if score @s completion_delay matches 0 unless data storage rotp:puzzle_game {type:"dig_site"} run function rotp:active/table/discovery/generate_final_reward
execute if score @s completion_delay matches 0 run scoreboard players reset @s completion_delay
