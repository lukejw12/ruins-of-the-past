data modify storage rotp:puzzle_game puzzle_active set value 1b
data modify storage rotp:puzzle_game first_click set value -1
data modify storage rotp:puzzle_game timer set value 800
data modify storage rotp:puzzle_game type set from storage rotp:discovery type
function rotp:active/table/recipes/ancient_tablet_clear_results
function rotp:active/table/discovery/scramble_puzzle_pieces

scoreboard players set @s puzzle_timer 800