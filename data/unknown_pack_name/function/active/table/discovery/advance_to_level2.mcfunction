
execute if data storage unknown_pack_name:discovery base_rarity run data modify storage unknown_pack_name:discovery rarity set from storage unknown_pack_name:discovery base_rarity

data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level set value 2
execute store result score #current_uses temp run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses 1
scoreboard players remove #current_uses temp 1
execute store result block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses int 1 run scoreboard players get #current_uses temp


function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results


execute if data storage unknown_pack_name:discovery {type:"rune"} run function unknown_pack_name:active/table/discovery/level2_rune_selection

execute if data storage unknown_pack_name:discovery {type:"accessory"} run function unknown_pack_name:active/table/discovery/level2_accessory_selection

execute if data storage unknown_pack_name:discovery {type:"dig_site"} run function unknown_pack_name:active/table/discovery/level2_dig_site_selection

scoreboard players reset #current_uses temp

