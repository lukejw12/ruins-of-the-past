function unknown_pack_name:active/table/discovery/reveal_clicked_word
execute store result score #guesses_remaining temp run data get storage unknown_pack_name:discovery guesses_used 1
execute if score #guesses_remaining temp matches 5.. run function unknown_pack_name:active/table/discovery/puzzle_failed
scoreboard players reset #guesses_remaining temp