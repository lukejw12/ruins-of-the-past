execute run data merge block ~ ~ ~ {CustomName:"Research Workbench"}

scoreboard players reset #stop temp
function rotp:active/table/fill_gui_slots
execute if items block ~ ~ ~ container.10 test_block[custom_data~{ancient_tablet:1b}] run scoreboard players set #tablet_present temp 1
execute unless items block ~ ~ ~ container.10 test_block[custom_data~{ancient_tablet:1b}] run scoreboard players set #tablet_present temp 0

execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run function rotp:active/table/recipes/clear_data
execute if items block ~ ~ ~ container.10 test_block[custom_data={ancient_tablet:1b}] if data storage rotp:discovery type run function rotp:active/table/recipes/ancient_tablet_clear_results
execute if items block ~ ~ ~ container.10 test_block[custom_data={ancient_tablet:1b}] if data storage rotp:discovery type run data remove storage rotp:discovery type
scoreboard players operation #previous_tablet temp = #tablet_present temp
execute unless score #stop temp matches 1.. if items block ~ ~ ~ container.10 test_block[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass unless data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run function rotp:active/table/recipes/ancient_tablet_valid
execute unless score @s completion_delay matches 1.. if items block ~ ~ ~ container.10 test_block[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run function rotp:active/table/discovery/check_discovery_click
execute if score @s level2_delay matches 1.. run scoreboard players remove @s level2_delay 1
execute if score @s level2_delay matches 0 if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:1} run function rotp:active/table/discovery/advance_to_level2
execute if score @s level2_delay matches 0 run scoreboard players reset @s level2_delay
