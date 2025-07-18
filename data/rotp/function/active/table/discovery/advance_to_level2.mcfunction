execute if data storage rotp:discovery base_rarity run data modify storage rotp:discovery rarity set from storage rotp:discovery base_rarity

data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level set value 2
execute store result score #current_uses temp run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses 1
scoreboard players remove #current_uses temp 1
execute store result block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses int 1 run scoreboard players get #current_uses temp

function rotp:active/table/recipes/ancient_tablet_clear_results

execute if data storage rotp:discovery {type:"rune"} run function rotp:active/table/discovery/start_puzzle_game
execute if data storage rotp:discovery {type:"accessory"} run function rotp:active/table/discovery/start_puzzle_game
execute if data storage rotp:discovery {type:"dig_site"} run function rotp:active/table/discovery/start_puzzle_game

scoreboard players reset #current_uses temp