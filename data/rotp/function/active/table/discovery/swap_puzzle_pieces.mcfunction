scoreboard players operation #pos1 temp = #first_click_pos temp
scoreboard players operation #pos2 temp = #clicked_pos temp
function rotp:active/table/discovery/swap_pieces_in_array
data modify storage rotp:puzzle_game first_click set value -1
function rotp:active/table/discovery/place_puzzle_pieces
function rotp:active/table/discovery/check_puzzle_complete