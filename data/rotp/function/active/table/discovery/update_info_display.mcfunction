execute store result score #current_guesses temp run data get storage rotp:discovery guesses_used 1

data modify storage rotp:temp target_display set from storage rotp:discovery target_word

execute if score #current_guesses temp matches 0 run function rotp:active/table/discovery/place_info_display {guesses:"0"}
execute if score #current_guesses temp matches 1 run function rotp:active/table/discovery/place_info_display {guesses:"1"}
execute if score #current_guesses temp matches 2 run function rotp:active/table/discovery/place_info_display {guesses:"2"}
execute if score #current_guesses temp matches 3 run function rotp:active/table/discovery/place_info_display {guesses:"3"}
execute if score #current_guesses temp matches 4 run function rotp:active/table/discovery/place_info_display {guesses:"4"}
execute if score #current_guesses temp matches 5.. run function rotp:active/table/discovery/place_info_display {guesses:"FAILED"}

scoreboard players reset #current_guesses temp