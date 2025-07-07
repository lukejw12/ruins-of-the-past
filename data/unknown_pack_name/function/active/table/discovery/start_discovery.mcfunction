
data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses set value 3
data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level set value 1

data modify storage unknown_pack_name:discovery clear
function unknown_pack_name:active/table/discovery/fill_level1_results