$execute if data storage rotp:puzzle_game {puzzle_active:1b} if items block ~ ~ ~ container.$(slot) stone[custom_data~{puzzle_piece:1b}] run return 0

$execute if items block ~ ~ ~ container.$(slot) stone[custom_data~{word_puzzle:1b}] run data modify storage rotp:temp clicked_word_$(slot) set from block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_data".word_value
$execute unless items block ~ ~ ~ container.$(slot) light_gray_stained_glass_pane[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.$(slot) * unless items block ~ ~ ~ container.$(slot) stone[custom_data~{discovery_result:1b}] run function rotp:active/table/return_item {slot:$(slot)}
$execute unless items block ~ ~ ~ container.$(slot) * run item replace block ~ ~ ~ container.$(slot) with light_gray_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]
