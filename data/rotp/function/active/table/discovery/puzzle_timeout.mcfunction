data modify storage rotp:puzzle_game puzzle_active set value 0b
tellraw @p[distance=..10] [{"text":"Time's up! The ancient tablet crumbles to dust...","color":"red","bold":true}]
item replace block ~ ~ ~ container.10 with air
function rotp:active/table/recipes/ancient_tablet_clear_results
data remove storage rotp:discovery type
data remove storage rotp:discovery subtype
data remove storage rotp:discovery rarity
data remove storage rotp:discovery selected
data remove storage rotp:discovery player_has_clicked
data remove storage rotp:discovery target_word
data remove storage rotp:discovery grid_words
data remove storage rotp:discovery puzzle_active
data remove storage rotp:discovery guesses_used
data remove storage rotp:discovery base_rarity
data remove storage rotp:puzzle_game puzzle_active
data remove storage rotp:puzzle_game first_click
data remove storage rotp:puzzle_game timer
data remove storage rotp:puzzle_game type
data remove storage rotp:puzzle_game piece_order
scoreboard players reset @s puzzle_timer