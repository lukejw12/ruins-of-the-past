$execute if data storage rotp:temp {type:"rune"} unless items block ~ ~ ~ container.$(slot) stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.$(slot) * unless items block ~ ~ ~ container.$(slot) *[custom_data~{rune_type:1b}] run function rotp:active/rune_table/return_item {slot:$(slot)}

$execute if data storage rotp:temp {type:"transcriber"} unless items block ~ ~ ~ container.$(slot) stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.$(slot) * unless items block ~ ~ ~ container.$(slot) *[custom_data~{transcriber:1b}] run function rotp:active/rune_table/return_item {slot:$(slot)}

$execute unless items block ~ ~ ~ container.$(slot) * run item replace block ~ ~ ~ container.$(slot) with stone[item_model="rotp:gui_elements/$(type)_slot",tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]

data modify storage rotp:temp type set value "$(type)"