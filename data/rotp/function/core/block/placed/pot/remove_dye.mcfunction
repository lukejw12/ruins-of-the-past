
function rotp:core/block/placed/pot/update_pot_displays_default

particle splash ~ ~0.5 ~ 0.3 0.3 0.3 0.1 8

execute store result storage rotp:temp current_pot_id int 1 run scoreboard players get @s pot_id
data remove entity @s data.stored_item.components."minecraft:custom_data".dyed
data remove entity @s data.stored_item.components."minecraft:dyed_color"