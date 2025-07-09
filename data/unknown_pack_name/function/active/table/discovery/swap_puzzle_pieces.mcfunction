scoreboard players operation #pos1 temp = #first_click_pos temp
scoreboard players operation #pos2 temp = #clicked_pos temp
function unknown_pack_name:active/table/discovery/swap_pieces_in_array
data modify storage unknown_pack_name:puzzle_game first_click set value -1
function unknown_pack_name:active/table/discovery/place_puzzle_pieces
function unknown_pack_name:active/table/discovery/check_puzzle_complete