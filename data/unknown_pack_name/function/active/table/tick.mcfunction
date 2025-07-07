
scoreboard players reset #stop temp
function unknown_pack_name:active/table/fill_gui_slots
execute unless block ~ ~ ~ barrel run kill @s
execute unless score #stop temp matches 1.. if items block ~ ~ ~ container.10 stone[custom_data={ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass run function unknown_pack_name:active/table/recipes/ancient_tablet_valid
execute if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run function unknown_pack_name:active/table/discovery/check_discovery_click