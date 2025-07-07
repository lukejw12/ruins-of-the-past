
data modify storage unknown_pack_name:temp tablet_data set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"
data modify storage unknown_pack_name:temp tablet_data.tablet_uses set value 3
data modify storage unknown_pack_name:temp tablet_data.discovery_level set value 1
data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data" set from storage unknown_pack_name:temp tablet_data

data remove storage unknown_pack_name:discovery type
data remove storage unknown_pack_name:discovery subtype
data remove storage unknown_pack_name:discovery rarity
data remove storage unknown_pack_name:discovery selected
data remove storage unknown_pack_name:discovery player_has_clicked

data modify storage unknown_pack_name:discovery player_has_clicked set value 0b

function unknown_pack_name:active/table/discovery/fill_level1_results
