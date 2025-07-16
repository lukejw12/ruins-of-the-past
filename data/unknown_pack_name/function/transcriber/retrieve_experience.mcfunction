execute store result score #stored_levels temp run data get entity @s SelectedItem.components."minecraft:custom_data".stored_levels

execute if score #stored_levels temp matches 0 run tellraw @s [{"text":"Transcriber is empty!","color":"red"}]
execute if score #stored_levels temp matches 0 run return 0
execute store result storage unknown_pack_name:temp give_levels int 1 run scoreboard players get #stored_levels temp
function unknown_pack_name:transcriber/give_player_experience with storage unknown_pack_name:temp

scoreboard players set #stored_levels temp 0

function unknown_pack_name:transcriber/update_transcriber_display


scoreboard players reset #stored_levels temp