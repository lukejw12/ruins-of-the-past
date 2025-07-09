
# 1234
# 8765  
# 9101112
data modify storage unknown_pack_name:temp correct_order set value [1,2,3,4,8,7,6,5,9,10,11,12]


execute store success score #puzzle_complete temp run data modify storage unknown_pack_name:temp correct_order set from storage unknown_pack_name:puzzle_game piece_order


execute if score #puzzle_complete temp matches 0 run function unknown_pack_name:active/table/discovery/puzzle_solved

scoreboard players reset #puzzle_complete temp