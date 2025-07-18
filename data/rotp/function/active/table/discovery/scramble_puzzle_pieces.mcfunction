data modify storage rotp:puzzle_game piece_order set value [1,2,3,4,5,6,7,8,9,10,11,12]
execute store result score #shuffle_count temp run random value 25..50
function rotp:active/table/discovery/shuffle_pieces_loop
function rotp:active/table/discovery/place_puzzle_pieces