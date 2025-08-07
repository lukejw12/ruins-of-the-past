
execute unless items block ~ ~ ~ container.0 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.0 * run function rotp:active/table/return_item {slot:0}
execute unless items block ~ ~ ~ container.0 * run item replace block ~ ~ ~ container.0 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.1 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.1 * run function rotp:active/table/return_item {slot:1}
execute unless items block ~ ~ ~ container.1 * run item replace block ~ ~ ~ container.1 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.2 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.2 * run function rotp:active/table/return_item {slot:2}
execute unless items block ~ ~ ~ container.2 * run item replace block ~ ~ ~ container.2 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.3 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.3 * run function rotp:active/table/return_item {slot:3}
execute unless items block ~ ~ ~ container.3 * run item replace block ~ ~ ~ container.3 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.8 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.8 * run function rotp:active/table/return_item {slot:8}
execute unless items block ~ ~ ~ container.8 * run item replace block ~ ~ ~ container.8 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.9 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.9 * run function rotp:active/table/return_item {slot:9}
execute unless items block ~ ~ ~ container.9 * run item replace block ~ ~ ~ container.9 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.12 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.12 * run function rotp:active/table/return_item {slot:12}
execute unless items block ~ ~ ~ container.12 * run item replace block ~ ~ ~ container.12 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.17 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.17 * run function rotp:active/table/return_item {slot:17}
execute unless items block ~ ~ ~ container.17 * run item replace block ~ ~ ~ container.17 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.18 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.18 * run function rotp:active/table/return_item {slot:18}
execute unless items block ~ ~ ~ container.18 * run item replace block ~ ~ ~ container.18 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.19 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.19 * run function rotp:active/table/return_item {slot:19}
execute unless items block ~ ~ ~ container.19 * run item replace block ~ ~ ~ container.19 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.20 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.20 * run function rotp:active/table/return_item {slot:20}
execute unless items block ~ ~ ~ container.20 * run item replace block ~ ~ ~ container.20 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.21 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.21 * run function rotp:active/table/return_item {slot:21}
execute unless items block ~ ~ ~ container.21 * run item replace block ~ ~ ~ container.21 with stone[item_model="rotp:gui_elements/filled_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.10 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.10 * unless items block ~ ~ ~ container.10 test_block[custom_data~{ancient_tablet:1b}] run function rotp:active/table/return_item {slot:10}
execute unless items block ~ ~ ~ container.10 * run item replace block ~ ~ ~ container.10 with stone[item_model="rotp:gui_elements/tablet_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

execute unless items block ~ ~ ~ container.11 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 * unless items block ~ ~ ~ container.11 spyglass run function rotp:active/table/return_item {slot:11}
execute unless items block ~ ~ ~ container.11 * run item replace block ~ ~ ~ container.11 with stone[item_model="rotp:gui_elements/spyglass_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

function rotp:active/table/fill_result_slot {slot:4}
function rotp:active/table/fill_result_slot {slot:5}
function rotp:active/table/fill_result_slot {slot:6}
function rotp:active/table/fill_result_slot {slot:7}
function rotp:active/table/fill_result_slot {slot:13}
function rotp:active/table/fill_result_slot {slot:14}
function rotp:active/table/fill_result_slot {slot:15}
function rotp:active/table/fill_result_slot {slot:16}
function rotp:active/table/fill_result_slot {slot:22}
function rotp:active/table/fill_result_slot {slot:23}
function rotp:active/table/fill_result_slot {slot:24}
function rotp:active/table/fill_result_slot {slot:25}

function rotp:active/table/fill_info_slot {slot:26}