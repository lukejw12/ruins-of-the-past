data modify storage unknown_pack_name:puzzle_game puzzle_active set value 0b
tellraw @p[distance=..10] [{"text":"Time's up! The ancient tablet crumbles to dust...","color":"red","bold":true}]
item replace block ~ ~ ~ container.10 with air
function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results
data remove storage unknown_pack_name:discovery type
data remove storage unknown_pack_name:discovery subtype
data remove storage unknown_pack_name:discovery rarity
data remove storage unknown_pack_name:discovery selected
data remove storage unknown_pack_name:discovery player_has_clicked
data remove storage unknown_pack_name:discovery target_word
data remove storage unknown_pack_name:discovery grid_words
data remove storage unknown_pack_name:discovery puzzle_active
data remove storage unknown_pack_name:discovery guesses_used
data remove storage unknown_pack_name:discovery base_rarity
data remove storage unknown_pack_name:puzzle_game puzzle_active
data remove storage unknown_pack_name:puzzle_game first_click
data remove storage unknown_pack_name:puzzle_game timer
data remove storage unknown_pack_name:puzzle_game type
data remove storage unknown_pack_name:puzzle_game piece_order
scoreboard players reset @s puzzle_timer