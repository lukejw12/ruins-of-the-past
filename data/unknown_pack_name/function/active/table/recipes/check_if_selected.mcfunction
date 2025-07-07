scoreboard players set #expected_slots temp 12

scoreboard players set #auctual_slots temp 0
execute if items block ~ ~ ~ container.4 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.5 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.6 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.7 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.13 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.14 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.15 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.16 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.22 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.23 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.24 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1
execute if items block ~ ~ ~ container.25 egg[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run scoreboard players add #auctual_slots temp 1

execute unless score #auctual_slots temp = #expected_slots temp run function unknown_pack_name:active/table/recipes/ancient_tablet_craft
scoreboard players reset #auctual_slots temp
scoreboard players reset #expected_slots temp