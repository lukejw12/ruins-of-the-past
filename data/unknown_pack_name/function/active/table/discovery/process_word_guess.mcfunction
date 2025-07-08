execute store result score #current_guesses temp run data get storage unknown_pack_name:discovery guesses_used 1
scoreboard players add #current_guesses temp 1
execute store result storage unknown_pack_name:discovery guesses_used int 1 run scoreboard players get #current_guesses temp
function unknown_pack_name:active/table/discovery/get_clicked_word
data modify storage unknown_pack_name:temp test_comparison set from storage unknown_pack_name:temp clicked_word
execute store success score #wrong_word temp run data modify storage unknown_pack_name:temp test_comparison set from storage unknown_pack_name:discovery target_word
execute if score #wrong_word temp matches 0 run function unknown_pack_name:active/table/discovery/correct_word_found
execute unless score #wrong_word temp matches 0 run function unknown_pack_name:active/table/discovery/incorrect_word_guess
function unknown_pack_name:active/table/discovery/update_info_display
scoreboard players reset #current_guesses temp
scoreboard players reset #wrong_word temp
