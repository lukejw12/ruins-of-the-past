data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses set value 3
data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level set value 1

data remove storage unknown_pack_name:discovery type
data remove storage unknown_pack_name:discovery subtype
data remove storage unknown_pack_name:discovery rarity
data remove storage unknown_pack_name:discovery selected
function unknown_pack_name:active/table/discovery/fill_level1_results