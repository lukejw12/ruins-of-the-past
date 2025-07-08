
execute store result score #current_level temp run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level 1


execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {puzzle_active:1b} run function unknown_pack_name:active/table/discovery/handle_word_click

execute if score #current_level temp matches 2 run function unknown_pack_name:active/table/discovery/advance_to_level3

execute if score #current_level temp matches 3 run function unknown_pack_name:active/table/discovery/generate_final_reward

scoreboard players reset #current_level temp

