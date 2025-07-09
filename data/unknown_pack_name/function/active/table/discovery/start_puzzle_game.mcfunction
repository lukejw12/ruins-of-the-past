data modify storage unknown_pack_name:puzzle_game puzzle_active set value 1b
data modify storage unknown_pack_name:puzzle_game first_click set value -1
data modify storage unknown_pack_name:puzzle_game timer set value 800
data modify storage unknown_pack_name:puzzle_game type set from storage unknown_pack_name:discovery type
function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results
function unknown_pack_name:active/table/discovery/scramble_puzzle_pieces

scoreboard players set @s puzzle_timer 800