function unknown_pack_name:active/table/discovery/setup_word_banks

data modify storage unknown_pack_name:temp tablet_data set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"
data modify storage unknown_pack_name:temp tablet_data.tablet_uses set value 3
data modify storage unknown_pack_name:temp tablet_data.discovery_level set value 1
data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data" set from storage unknown_pack_name:temp tablet_data

data modify storage unknown_pack_name:discovery guesses_used set value 0
data modify storage unknown_pack_name:discovery max_guesses set value 5
data modify storage unknown_pack_name:discovery puzzle_active set value 1b

data remove storage unknown_pack_name:discovery type
data remove storage unknown_pack_name:discovery target_word
data remove storage unknown_pack_name:discovery grid_words
data remove storage unknown_pack_name:discovery selected
data remove storage unknown_pack_name:discovery player_has_clicked

function unknown_pack_name:active/table/discovery/create_word_puzzle