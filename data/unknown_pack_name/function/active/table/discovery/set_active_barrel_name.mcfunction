execute store result score #guesses_used temp run data get storage unknown_pack_name:discovery guesses_used 1
data modify storage unknown_pack_name:temp target_word_display set from storage unknown_pack_name:discovery target_word
execute if score #guesses_used temp matches 0 run function unknown_pack_name:active/table/discovery/set_barrel_name_by_word {guesses:"0"}
execute if score #guesses_used temp matches 1 run function unknown_pack_name:active/table/discovery/set_barrel_name_by_word {guesses:"1"}
execute if score #guesses_used temp matches 2 run function unknown_pack_name:active/table/discovery/set_barrel_name_by_word {guesses:"2"}
execute if score #guesses_used temp matches 3 run function unknown_pack_name:active/table/discovery/set_barrel_name_by_word {guesses:"3"}
execute if score #guesses_used temp matches 4 run function unknown_pack_name:active/table/discovery/set_barrel_name_by_word {guesses:"4"}
execute if score #guesses_used temp matches 5.. run function unknown_pack_name:active/table/discovery/set_barrel_name_by_word {guesses:"FAILED"}