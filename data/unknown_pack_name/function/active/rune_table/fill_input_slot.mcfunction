# Don't fill slot 4 with GUI filler - let players put any item here
$execute unless items block ~ ~ ~ container.$(slot) stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.$(slot) stone[custom_data~{rune_type:1b}] run function unknown_pack_name:active/rune_table/return_item {slot:$(slot)}
$execute unless items block ~ ~ ~ container.$(slot) stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.$(slot) *[custom_data~{transcriber:1b}] run function unknown_pack_name:active/rune_table/return_item {slot:$(slot)}
# Slot 4 should remain empty by default - no GUI filler