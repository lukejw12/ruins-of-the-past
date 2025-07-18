data modify storage rotp:temp correct_order set value [1,2,3,4,8,7,6,5,9,10,11,12]
execute store success score #puzzle_complete temp run data modify storage rotp:temp correct_order set from storage rotp:puzzle_game piece_order
execute if score #puzzle_complete temp matches 1 run data modify storage rotp:temp correct_order_alt set value [1,2,3,4,8,7,6,5,9,11,10,12]
execute if score #puzzle_complete temp matches 1 run execute store success score #puzzle_complete temp run data modify storage rotp:temp correct_order_alt set from storage rotp:puzzle_game piece_order
execute if score #puzzle_complete temp matches 0 run function rotp:active/table/discovery/puzzle_solved