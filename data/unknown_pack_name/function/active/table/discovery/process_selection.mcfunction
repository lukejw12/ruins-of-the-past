say "=== PROCESS SELECTION CALLED ==="

execute store result score #current_level temp run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level 1

execute if score #current_level temp matches 1 run say "Current level is 1"
execute if score #current_level temp matches 2 run say "Current level is 2"
execute if score #current_level temp matches 3 run say "Current level is 3"

scoreboard players set #valid_click temp 0

# LEVEL 1: Check for glass panes (which indicates a click happened)
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.4 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run say "Level 1: Slot 4 was clicked - setting type to rune"
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.4 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run data modify storage unknown_pack_name:discovery type set value "rune"
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.4 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1

execute if score #current_level temp matches 1 if items block ~ ~ ~ container.5 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run say "Level 1: Slot 5 was clicked - setting type to accessory"
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.5 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run data modify storage unknown_pack_name:discovery type set value "accessory"
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.5 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1

execute if score #current_level temp matches 1 if items block ~ ~ ~ container.6 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run say "Level 1: Slot 6 was clicked - setting type to dig_site"
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.6 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run data modify storage unknown_pack_name:discovery type set value "dig_site"
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.6 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1

# Level 1: Check other slots for glass panes too
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.7 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.13 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.14 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.15 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.16 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.22 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.23 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.24 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 if items block ~ ~ ~ container.25 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1

# LEVEL 2: Check for glass panes (clicked level 2 items)
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.4 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run say "Level 2: Slot 4 was clicked"
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.4 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.5 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run say "Level 2: Slot 5 was clicked"
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.5 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.6 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run say "Level 2: Slot 6 was clicked"
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.6 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.7 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.13 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.14 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.15 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.16 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.22 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.23 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.24 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 if items block ~ ~ ~ container.25 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1

# LEVEL 3: Check for glass panes (clicked level 3 items)
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.4 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run say "Level 3: Slot 4 was clicked"
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.4 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.5 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run say "Level 3: Slot 5 was clicked"
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.5 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.6 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run say "Level 3: Slot 6 was clicked"
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.6 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.7 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.13 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.14 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.15 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.16 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.22 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.23 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.24 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 if items block ~ ~ ~ container.25 light_gray_stained_glass_pane[custom_data={gui_filler:1b}] run scoreboard players set #valid_click temp 1

# Check valid click flag
execute if score #valid_click temp matches 1 run say "Valid click detected!"
execute if score #valid_click temp matches 0 run say "NO valid click detected"

# ONLY mark as clicked if this was a valid click AND tablet/spyglass are present
execute if score #valid_click temp matches 1 if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass run say "Setting player_has_clicked"
execute if score #valid_click temp matches 1 if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass run data modify storage unknown_pack_name:discovery player_has_clicked set value 1b

# Advance based on the CAPTURED level
execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {type:"rune"} run say "About to advance to level 2 - Rune"
execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {type:"rune"} run function unknown_pack_name:active/table/discovery/advance_to_level2

execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {type:"accessory"} run say "About to advance to level 2 - Accessory"
execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {type:"accessory"} run function unknown_pack_name:active/table/discovery/advance_to_level2

execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {type:"dig_site"} run say "About to advance to level 2 - Dig Site"
execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {type:"dig_site"} run function unknown_pack_name:active/table/discovery/advance_to_level2

execute if score #current_level temp matches 2 run say "About to advance to level 3"
execute if score #current_level temp matches 2 run function unknown_pack_name:active/table/discovery/advance_to_level3

execute if score #current_level temp matches 3 run say "About to generate final reward"
execute if score #current_level temp matches 3 run function unknown_pack_name:active/table/discovery/generate_final_reward

# Clean up
scoreboard players reset #current_level temp
scoreboard players reset #valid_click temp

say "=== PROCESS SELECTION COMPLETE ==="