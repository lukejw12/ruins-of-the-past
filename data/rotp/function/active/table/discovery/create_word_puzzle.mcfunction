function rotp:active/table/discovery/create_grid_first
execute store result score #target_grid_index temp run random value 0..11
execute if score #target_grid_index temp matches 0 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[0]
execute if score #target_grid_index temp matches 1 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[1]
execute if score #target_grid_index temp matches 2 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[2]
execute if score #target_grid_index temp matches 3 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[3]
execute if score #target_grid_index temp matches 4 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[4]
execute if score #target_grid_index temp matches 5 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[5]
execute if score #target_grid_index temp matches 6 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[6]
execute if score #target_grid_index temp matches 7 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[7]
execute if score #target_grid_index temp matches 8 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[8]
execute if score #target_grid_index temp matches 9 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[9]
execute if score #target_grid_index temp matches 10 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[10]
execute if score #target_grid_index temp matches 11 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[11]
function rotp:active/table/discovery/determine_type_from_word
function rotp:active/table/discovery/place_words_in_gui
scoreboard players reset #target_grid_index temp