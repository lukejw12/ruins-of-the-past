execute store result score #current_level temp run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level 1
scoreboard players set #valid_click temp 0

execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.4 * run data modify storage unknown_pack_name:discovery type set value "rune"
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.4 * run scoreboard players set #valid_click temp 1

execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.5 * run data modify storage unknown_pack_name:discovery type set value "accessory"
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.5 * run scoreboard players set #valid_click temp 1

execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.6 * run data modify storage unknown_pack_name:discovery type set value "dig_site"
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.6 * run scoreboard players set #valid_click temp 1

execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.7 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.13 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.14 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.15 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.16 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.22 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.23 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.24 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 1 unless items block ~ ~ ~ container.25 * run scoreboard players set #valid_click temp 1

execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.4 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.5 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.6 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.7 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.13 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.14 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.15 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.16 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.22 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.23 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.24 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 2 unless items block ~ ~ ~ container.25 * run scoreboard players set #valid_click temp 1

execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.4 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.5 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.6 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.7 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.13 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.14 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.15 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.16 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.22 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.23 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.24 * run scoreboard players set #valid_click temp 1
execute if score #current_level temp matches 3 unless items block ~ ~ ~ container.25 * run scoreboard players set #valid_click temp 1
execute if score #valid_click temp matches 1 if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] if items block ~ ~ ~ container.11 spyglass run data modify storage unknown_pack_name:discovery player_has_clicked set value 1b
function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results
execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {type:"rune"} run function unknown_pack_name:active/table/discovery/advance_to_level2
execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {type:"accessory"} run function unknown_pack_name:active/table/discovery/advance_to_level2
execute if score #current_level temp matches 1 if data storage unknown_pack_name:discovery {type:"dig_site"} run function unknown_pack_name:active/table/discovery/advance_to_level2

execute if score #current_level temp matches 2 run function unknown_pack_name:active/table/discovery/advance_to_level3
execute if score #current_level temp matches 3 run function unknown_pack_name:active/table/discovery/generate_final_reward

scoreboard players reset #current_level temp
scoreboard players reset #valid_click temp