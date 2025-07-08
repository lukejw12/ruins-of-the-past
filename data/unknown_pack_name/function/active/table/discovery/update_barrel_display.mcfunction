
execute store result score #current_guesses temp run data get storage unknown_pack_name:discovery guesses_used 1
execute store result score #max_guesses temp run data get storage unknown_pack_name:discovery max_guesses 1

scoreboard players operation #remaining_guesses temp = #max_guesses temp
scoreboard players operation #remaining_guesses temp -= #current_guesses temp


execute if data storage unknown_pack_name:discovery {puzzle_active:1b} run function unknown_pack_name:active/table/discovery/set_active_barrel_name
execute unless data storage unknown_pack_name:discovery {puzzle_active:1b} run function unknown_pack_name:active/table/discovery/set_complete_barrel_name

scoreboard players reset #current_guesses temp
scoreboard players reset #max_guesses temp
scoreboard players reset #remaining_guesses temp
