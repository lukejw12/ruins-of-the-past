$execute unless items block ~ ~ ~ container.$(slot) stone[custom_data~{arrow_slot:1b}] unless items block ~ ~ ~ container.$(slot) stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.$(slot) * run function rotp:active/rune_table/return_item {slot:$(slot)}

scoreboard players set #has_item temp 0
scoreboard players set #has_rune temp 0
scoreboard players set #has_transcriber temp 0

execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 stone[custom_data={gui_filler:1b}] run scoreboard players set #has_item temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{luminous_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{hearty_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{swift_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{fortified_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{blazing_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{shadowy_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{venomous_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{thunderous_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{earthen_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{aquatic_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{vampiric_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.11 *[custom_data~{berserker_rune:1b}] run scoreboard players set #has_rune temp 1
execute if items block ~ ~ ~ container.15 *[custom_data~{transcriber:1b}] run scoreboard players set #has_transcriber temp 1

$execute if score #has_item temp matches 1 if score #has_rune temp matches 1 if score #has_transcriber temp matches 1 run function rotp:active/rune_table/update_arrow_slot {slot:$(slot)}
$execute unless score #has_item temp matches 1 run function rotp:active/rune_table/show_empty_arrow {slot:$(slot)}
$execute unless score #has_rune temp matches 1 run function rotp:active/rune_table/show_empty_arrow {slot:$(slot)}
$execute unless score #has_transcriber temp matches 1 run function rotp:active/rune_table/show_empty_arrow {slot:$(slot)}

scoreboard players reset #has_item temp
scoreboard players reset #has_rune temp
scoreboard players reset #has_transcriber temp