$execute if data storage rotp:puzzle_game {puzzle_active:1b} if items block ~ ~ ~ container.$(slot) stone[custom_data~{puzzle_piece:1b}] run return 0

$execute if items block ~ ~ ~ container.$(slot) stone[custom_data~{word_puzzle:1b}] run data modify storage rotp:temp clicked_word_$(slot) set from block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_data".word_value

scoreboard players set #recipe_filled temp 0
execute if items block ~ ~ ~ container.1 #rotp:pottery_materials if items block ~ ~ ~ container.9 #rotp:pottery_materials if items block ~ ~ ~ container.11 #rotp:pottery_materials if items block ~ ~ ~ container.19 #rotp:pottery_materials run scoreboard players set #recipe_filled temp 1

scoreboard players set #should_check_pot temp 0
$execute store result score #pot_count temp run data get block ~ ~ ~ Items[{Slot:$(slot)b}].count
execute unless score #recipe_filled temp matches 1 if score #pot_count temp matches 1.. run scoreboard players set #should_check_pot temp 1
execute if score #recipe_filled temp matches 1 if score #pot_count temp matches 2.. run scoreboard players set #should_check_pot temp 1

$execute if score #should_check_pot temp matches 1 if items block ~ ~ ~ container.$(slot) structure_void[custom_data~{pot_item:1b}] run function rotp:active/pottery_wheel/return_item {slot:$(slot)}
$execute if score #should_check_pot temp matches 1 if items block ~ ~ ~ container.$(slot) structure_void[custom_data~{pot_item:1b}] run return 0

$execute if score #recipe_filled temp matches 1 unless items block ~ ~ ~ container.$(slot) light_gray_stained_glass_pane[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.$(slot) * unless items block ~ ~ ~ container.$(slot) structure_void[custom_data~{pottery_result:1b}] run function rotp:active/pottery_wheel/return_item {slot:$(slot)}

$execute unless items block ~ ~ ~ container.$(slot) * run item replace block ~ ~ ~ container.$(slot) with light_gray_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

scoreboard players reset #should_check_pot temp
scoreboard players reset #pot_count temp
scoreboard players reset #current_slot temp
scoreboard players reset #recipe_filled temp