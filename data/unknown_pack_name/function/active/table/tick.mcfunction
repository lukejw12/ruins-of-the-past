scoreboard players reset #stop temp
function unknown_pack_name:active/table/fill_gui_slots

execute unless block ~ ~ ~ barrel run kill @s

execute if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] run scoreboard players set #tablet_present temp 1
execute unless items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] run scoreboard players set #tablet_present temp 0

execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results

execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 if data storage unknown_pack_name:discovery {player_has_clicked:1b} run function unknown_pack_name:active/table/recipes/tablet_removal_penalty

execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery type
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery subtype
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery rarity
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery selected
execute if score #tablet_present temp matches 0 if score #previous_tablet temp matches 1 run data remove storage unknown_pack_name:discovery player_has_clicked

execute if items block ~ ~ ~ container.10 stone[custom_data={ancient_tablet:1b}] if data storage unknown_pack_name:discovery type run function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results
execute if items block ~ ~ ~ container.10 stone[custom_data={ancient_tablet:1b}] if data storage unknown_pack_name:discovery type run data remove storage unknown_pack_name:discovery type

scoreboard players operation #previous_tablet temp = #tablet_present temp

execute unless score #stop temp matches 1.. if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass unless data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run function unknown_pack_name:active/table/recipes/ancient_tablet_valid

execute if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run function unknown_pack_name:active/table/discovery/check_discovery_click