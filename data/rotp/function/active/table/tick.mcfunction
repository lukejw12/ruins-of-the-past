execute unless block ~ ~ ~ barrel run function rotp:active/table/cleanup_table
execute if block ~ ~ ~ barrel[open=true] run data merge block ~ ~ ~ {CustomName:"Research Workbench"}

scoreboard players reset #stop temp
execute if block ~ ~ ~ barrel[open=true] run function rotp:active/table/fill_gui_slots
kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{gui_filler:1b}}}}]
execute if block ~ ~ ~ barrel[open=true] if items block ~ ~ ~ container.10 test_block[custom_data~{ancient_tablet:1b}] run scoreboard players set #tablet_present temp 1
execute if block ~ ~ ~ barrel[open=true] unless items block ~ ~ ~ container.10 test_block[custom_data~{ancient_tablet:1b}] run scoreboard players set #tablet_present temp 0

execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run function rotp:active/table/recipes/clear_data
execute if block ~ ~ ~ barrel[open=true] if items block ~ ~ ~ container.10 test_block[custom_data={ancient_tablet:1b}] if data storage rotp:discovery type run function rotp:active/table/recipes/ancient_tablet_clear_results
execute if block ~ ~ ~ barrel[open=true] if items block ~ ~ ~ container.10 test_block[custom_data={ancient_tablet:1b}] if data storage rotp:discovery type run data remove storage rotp:discovery type
scoreboard players operation #previous_tablet temp = #tablet_present temp
execute if block ~ ~ ~ barrel[open=true] unless score #stop temp matches 1.. if items block ~ ~ ~ container.10 test_block[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass unless data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run function rotp:active/table/recipes/ancient_tablet_valid
execute if block ~ ~ ~ barrel[open=true] unless score @s completion_delay matches 1.. if items block ~ ~ ~ container.10 test_block[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run function rotp:active/table/discovery/check_discovery_click
execute if block ~ ~ ~ barrel[open=true] if score @s level2_delay matches 1.. run scoreboard players remove @s level2_delay 1
execute if block ~ ~ ~ barrel[open=true] if score @s level2_delay matches 0 if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:1} run function rotp:active/table/discovery/advance_to_level2
execute if block ~ ~ ~ barrel[open=true] if score @s level2_delay matches 0 run scoreboard players reset @s level2_delay
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
