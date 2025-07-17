scoreboard players set #has_all_items temp 0
scoreboard players set #can_craft temp 0

# Check if all slots are filled correctly (same as before)
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{luminous_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{hearty_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{swift_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{fortified_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{blazing_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{shadowy_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{venomous_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{thunderous_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{earthen_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{aquatic_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{vampiric_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.11 *[custom_data~{berserker_rune:1b}] if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_all_items temp 1

execute if score #has_all_items temp matches 1 if items block ~ ~ ~ container.13 stone[custom_data~{can_craft:1b}] run scoreboard players set #can_craft temp 1

execute if score #can_craft temp matches 1 run function unknown_pack_name:active/rune_table/show_result
execute unless score #can_craft temp matches 1 run function unknown_pack_name:active/rune_table/clear_result

scoreboard players reset #has_all_items temp
scoreboard players reset #can_craft temp