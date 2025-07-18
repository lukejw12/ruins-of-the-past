function rotp:active/table/recipes/ancient_tablet_clear_results
execute store result score #penalty_roll temp run random value 1..100
execute if score #penalty_roll temp matches 1..60 run title @p[distance=..10] actionbar [{"text":"Your abrupt halt of decoding the tablet has caused it to shatter...","color":"dark_gray"}]
execute if score #penalty_roll temp matches 1..60 run function rotp:active/table/recipes/clear_broken_tablet_from_player

execute if score #penalty_roll temp matches 61..100 run title @p[distance=..10] actionbar [{"text":"Your abrupt halt damaged the tablet, wiping its progress...","color":"dark_gray"}]
execute if score #penalty_roll temp matches 61..100 run function rotp:active/table/recipes/clean_tablet_data_from_player

data remove storage rotp:discovery type
data remove storage rotp:discovery subtype
data remove storage rotp:discovery rarity
data remove storage rotp:discovery selected

data remove storage rotp:discovery target_word
data remove storage rotp:discovery grid_words
data remove storage rotp:discovery puzzle_active
data remove storage rotp:discovery guesses_used

scoreboard players reset #penalty_roll temp