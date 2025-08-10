execute store result score #stored_points temp run data get entity @s SelectedItem.components."minecraft:custom_data".stored_points

execute if score #stored_points temp matches 0 run return 0

tellraw @s [{"text":"Debug: Stored points = ","color":"yellow"},{"score":{"name":"#stored_points","objective":"temp"},"color":"white"}]

execute store result storage rotp:temp give_points int 1 run scoreboard players get #stored_points temp
function rotp:transcriber/give_points with storage rotp:temp

scoreboard players set #stored_points temp 0

function rotp:transcriber/update_transcriber_display

scoreboard players reset #stored_points temp