scoreboard players reset #stop temp
function unknown_pack_name:active/table/fill_gui_slots
execute unless block ~ ~ ~ barrel run kill @s
execute if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] run scoreboard players set #tablet_present temp 1
execute unless items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] run scoreboard players set #tablet_present temp 0

execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 if data storage unknown_pack_name:discovery {player_has_clicked:1b} run function unknown_pack_name:active/table/recipes/tablet_removal_penalty
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery type
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery subtype
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery rarity
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery selected
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery player_has_clicked
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery target_word
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery grid_words
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery puzzle_active
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery guesses_used
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery base_rarity
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:puzzle_game puzzle_active
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:puzzle_game first_click
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:puzzle_game timer
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:puzzle_game type
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:puzzle_game piece_order
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove block ~ ~ ~ custom_name
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run scoreboard players reset @s puzzle_timer

execute if items block ~ ~ ~ container.10 stone[custom_data={ancient_tablet:1b}] if data storage unknown_pack_name:discovery type run function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results
execute if items block ~ ~ ~ container.10 stone[custom_data={ancient_tablet:1b}] if data storage unknown_pack_name:discovery type run data remove storage unknown_pack_name:discovery type

data merge block ~ ~ ~ {CustomName:"Research Workbench"}

scoreboard players operation #previous_tablet temp = #tablet_present temp

execute unless score #stop temp matches 1.. if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass unless data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run function unknown_pack_name:active/table/recipes/ancient_tablet_valid

execute if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level unless score @s level3_delay matches 1.. run function unknown_pack_name:active/table/discovery/check_discovery_click
execute if score @s level2_delay matches 1.. run scoreboard players remove @s level2_delay 1
execute if score @s level2_delay matches 0 if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:1} run function unknown_pack_name:active/table/discovery/advance_to_level2
execute if score @s level2_delay matches 0 run scoreboard players reset @s level2_delay

execute if score @s puzzle_click_cooldown matches 1.. run scoreboard players remove @s puzzle_click_cooldown 1

execute if score @s puzzle_timer matches 1.. run scoreboard players remove @s puzzle_timer 1
execute if score @s puzzle_timer matches 1.. run execute store result storage unknown_pack_name:puzzle_game timer int 1 run scoreboard players get @s puzzle_timer
execute if score @s puzzle_timer matches 0 if data storage unknown_pack_name:puzzle_game {puzzle_active:1b} run function unknown_pack_name:active/table/discovery/puzzle_timeout

execute if data storage unknown_pack_name:puzzle_game {puzzle_active:1b} run function unknown_pack_name:active/table/discovery/update_puzzle_info_display
execute if score @s level3_delay matches 1.. run scoreboard players remove @s level3_delay 1
execute if score @s level3_delay matches 0 if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:2} run function unknown_pack_name:active/table/discovery/advance_to_level3
execute if score @s level3_delay matches 0 run scoreboard players reset @s level3_delay
execute if score @s clean_tablets_next_tick matches 1 run function unknown_pack_name:active/table/discovery/delayed_tablet_clean