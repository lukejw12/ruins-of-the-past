execute store result score #current_level temp run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level 1

execute if score #current_level temp matches 1 if data storage rotp:discovery {puzzle_active:1b} run function rotp:active/table/discovery/handle_word_click

execute if score #current_level temp matches 2 if data storage rotp:puzzle_game {puzzle_active:1b} run function rotp:active/table/discovery/handle_puzzle_click
execute if score #current_level temp matches 3 run function rotp:active/table/discovery/generate_final_reward

scoreboard players reset #current_level temp