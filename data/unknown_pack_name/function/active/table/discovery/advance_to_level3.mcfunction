data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level set value 3
execute store result score #current_uses temp run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses 1
scoreboard players remove #current_uses temp 1
execute store result block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses int 1 run scoreboard players get #current_uses temp
function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results
function unknown_pack_name:active/table/discovery/fill_level3_results
scoreboard players reset #current_uses temp