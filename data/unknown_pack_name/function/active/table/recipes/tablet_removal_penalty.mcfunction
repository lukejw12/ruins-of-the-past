function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results
execute store result score #penalty_roll temp run random value 1..100
execute if score #penalty_roll temp matches 1..60 run title @p[distance=..10] actionbar [{"text":"Your abrupt halt of decoding the tablet has caused it to shatter...","color":"dark_gray"}]
execute if score #penalty_roll temp matches 1..60 run function unknown_pack_name:active/table/recipes/clear_broken_tablet_from_player

execute if score #penalty_roll temp matches 61..100 run title @p[distance=..10] actionbar [{"text":"Your abrupt halt damaged the tablet, wiping its progress...","color":"dark_gray"}]
execute if score #penalty_roll temp matches 61..100 run function unknown_pack_name:active/table/recipes/clean_tablet_data_from_player

data remove storage unknown_pack_name:discovery type
data remove storage unknown_pack_name:discovery subtype
data remove storage unknown_pack_name:discovery rarity
data remove storage unknown_pack_name:discovery selected

data remove storage unknown_pack_name:discovery target_word
data remove storage unknown_pack_name:discovery grid_words
data remove storage unknown_pack_name:discovery puzzle_active
data remove storage unknown_pack_name:discovery guesses_used

scoreboard players reset #penalty_roll temp