
execute unless items block ~ ~ ~ container.0 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.0 * run function rotp:active/pottery_wheel/return_item {slot:0}
execute unless items block ~ ~ ~ container.0 * run item replace block ~ ~ ~ container.0 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.2 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.2 * run function rotp:active/pottery_wheel/return_item {slot:2}
execute unless items block ~ ~ ~ container.2 * run item replace block ~ ~ ~ container.2 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.3 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.3 * run function rotp:active/pottery_wheel/return_item {slot:3}
execute unless items block ~ ~ ~ container.3 * run item replace block ~ ~ ~ container.3 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.8 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.8 * run function rotp:active/pottery_wheel/return_item {slot:8}
execute unless items block ~ ~ ~ container.8 * run item replace block ~ ~ ~ container.8 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.12 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.12 * run function rotp:active/pottery_wheel/return_item {slot:12}
execute unless items block ~ ~ ~ container.12 * run item replace block ~ ~ ~ container.12 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.17 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.17 * run function rotp:active/pottery_wheel/return_item {slot:17}
execute unless items block ~ ~ ~ container.17 * run item replace block ~ ~ ~ container.17 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.18 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.18 * run function rotp:active/pottery_wheel/return_item {slot:18}
execute unless items block ~ ~ ~ container.18 * run item replace block ~ ~ ~ container.18 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.20 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.20 * run function rotp:active/pottery_wheel/return_item {slot:20}
execute unless items block ~ ~ ~ container.20 * run item replace block ~ ~ ~ container.20 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.21 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.21 * run function rotp:active/pottery_wheel/return_item {slot:21}
execute unless items block ~ ~ ~ container.21 * run item replace block ~ ~ ~ container.21 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.26 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.26 * run function rotp:active/pottery_wheel/return_item {slot:26}
execute unless items block ~ ~ ~ container.26 * run item replace block ~ ~ ~ container.26 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.1 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.1 * unless items block ~ ~ ~ container.1 #rotp:pottery_materials run function rotp:active/pottery_wheel/return_item {slot:1}
execute unless items block ~ ~ ~ container.1 * run item replace block ~ ~ ~ container.1 with stone[item_model="rotp:gui_elements/sherd_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.9 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.9 * unless items block ~ ~ ~ container.9 #rotp:pottery_materials run function rotp:active/pottery_wheel/return_item {slot:9}
execute unless items block ~ ~ ~ container.9 * run item replace block ~ ~ ~ container.9 with stone[item_model="rotp:gui_elements/sherd_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.11 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 * unless items block ~ ~ ~ container.11 #rotp:pottery_materials run function rotp:active/pottery_wheel/return_item {slot:11}
execute unless items block ~ ~ ~ container.11 * run item replace block ~ ~ ~ container.11 with stone[item_model="rotp:gui_elements/sherd_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.19 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.19 * unless items block ~ ~ ~ container.19 #rotp:pottery_materials run function rotp:active/pottery_wheel/return_item {slot:19}
execute unless items block ~ ~ ~ container.19 * run item replace block ~ ~ ~ container.19 with stone[item_model="rotp:gui_elements/sherd_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless score @s result_slots_filled matches 0.. run scoreboard players set @s result_slots_filled 0

scoreboard players set #current_results_present temp 0
execute if items block ~ ~ ~ container.4 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_results_present temp 1
execute if items block ~ ~ ~ container.5 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_results_present temp 1
execute if items block ~ ~ ~ container.6 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_results_present temp 1
execute if items block ~ ~ ~ container.7 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_results_present temp 1
execute if items block ~ ~ ~ container.13 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_results_present temp 1
execute if items block ~ ~ ~ container.14 structure_void[custom_data~{display_item:1b}] run scoreboard players add #current_results_present temp 1

scoreboard players set #need_to_fill_results temp 0

execute if score @s result_slots_filled matches 6 if score #current_results_present temp matches 0..5 run scoreboard players set #need_to_fill_results temp 1

execute unless score @s ingredient_hash matches -2147483648.. run scoreboard players set #need_to_fill_results temp 1

execute store result score #current_ingredient_hash temp run function rotp:active/pottery_wheel/calculate_ingredient_hash
execute unless score #current_ingredient_hash temp = @s ingredient_hash run scoreboard players set #need_to_fill_results temp 1

execute if score #need_to_fill_results temp matches 1 run function rotp:active/pottery_wheel/fill_all_result_slots

scoreboard players operation @s result_slots_filled = #current_results_present temp
scoreboard players reset #current_results_present temp
scoreboard players reset #need_to_fill_results temp
scoreboard players reset #current_ingredient_hash temp