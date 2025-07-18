execute if score #words_added temp matches 11.. run return 0
execute store result score #random_index temp run random value 0..11
execute if score #random_index temp matches 0 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[0]
execute if score #random_index temp matches 1 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[1]
execute if score #random_index temp matches 2 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[2]
execute if score #random_index temp matches 3 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[3]
execute if score #random_index temp matches 4 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[4]
execute if score #random_index temp matches 5 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[5]
execute if score #random_index temp matches 6 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[6]
execute if score #random_index temp matches 7 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[7]
execute if score #random_index temp matches 8 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[8]
execute if score #random_index temp matches 9 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[9]
execute if score #random_index temp matches 10 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[10]
execute if score #random_index temp matches 11 run data modify storage rotp:discovery grid_words append from storage rotp:temp word_pool[11]
scoreboard players add #words_added temp 1
function rotp:active/table/discovery/add_random_word_loop