 function rotp:active/table/recipes/ancient_tablet_clear_results
execute if data storage rotp:discovery {player_has_clicked:1b} run function rotp:active/table/recipes/tablet_removal_penalty
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