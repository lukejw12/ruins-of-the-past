execute store result score #stored_levels temp run data get entity @s SelectedItem.components."minecraft:custom_data".stored_levels

execute if score #stored_levels temp matches 0 run return 0
execute store result storage rotp:temp give_levels int 1 run scoreboard players get #stored_levels temp
function rotp:transcriber/give_player_experience with storage rotp:temp

scoreboard players set #stored_levels temp 0

function rotp:transcriber/update_transcriber_display


scoreboard players reset #stored_levels temp