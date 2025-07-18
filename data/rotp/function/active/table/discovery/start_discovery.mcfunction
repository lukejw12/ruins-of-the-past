function rotp:active/table/discovery/setup_word_banks

data modify storage rotp:temp tablet_data set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"
data modify storage rotp:temp tablet_data.tablet_uses set value 3
data modify storage rotp:temp tablet_data.discovery_level set value 1
data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data" set from storage rotp:temp tablet_data

data modify storage rotp:discovery guesses_used set value 0
data modify storage rotp:discovery max_guesses set value 5
data modify storage rotp:discovery puzzle_active set value 1b

data remove storage rotp:discovery type
data remove storage rotp:discovery target_word
data remove storage rotp:discovery grid_words
data remove storage rotp:discovery selected
data remove storage rotp:discovery player_has_clicked

function rotp:active/table/discovery/create_word_puzzle