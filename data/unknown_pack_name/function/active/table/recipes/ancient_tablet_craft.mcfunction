
data modify storage unknown_pack_name:temp spyglass_data set from block ~ ~ ~ Items[{Slot:11b}]

execute store result score #current_damage temp run data get storage unknown_pack_name:temp spyglass_data.components."minecraft:damage" 1
execute unless data storage unknown_pack_name:temp spyglass_data.components."minecraft:damage" run scoreboard players set #current_damage temp 0

scoreboard players add #current_damage temp 109
scoreboard players reset #stop temp
execute if score #current_damage temp matches 326.. run function unknown_pack_name:active/table/recipes/ancient_tablet_break_spyglass
execute if score #current_damage temp matches ..325 run function unknown_pack_name:active/table/recipes/ancient_tablet_damage_spyglass