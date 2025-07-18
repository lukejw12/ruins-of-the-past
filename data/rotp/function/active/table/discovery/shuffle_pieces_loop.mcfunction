execute if score #shuffle_count temp matches 1.. run execute store result score #pos1 temp run random value 0..11
execute if score #shuffle_count temp matches 1.. run execute store result score #pos2 temp run random value 0..11
execute if score #shuffle_count temp matches 1.. unless score #pos1 temp = #pos2 temp run function rotp:active/table/discovery/swap_pieces_in_array
execute if score #shuffle_count temp matches 1.. run scoreboard players remove #shuffle_count temp 1
execute if score #shuffle_count temp matches 1.. run function rotp:active/table/discovery/shuffle_pieces_loop