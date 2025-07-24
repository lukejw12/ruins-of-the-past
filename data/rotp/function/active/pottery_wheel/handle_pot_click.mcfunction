scoreboard players set #clicked_slot temp -1
scoreboard players set #clicked_pot_type temp -1

scoreboard players set #has_valid_recipe temp 0
execute if items block ~ ~ ~ container.1 #rotp:pottery_materials if items block ~ ~ ~ container.9 #rotp:pottery_materials if items block ~ ~ ~ container.11 #rotp:pottery_materials if items block ~ ~ ~ container.19 #rotp:pottery_materials run scoreboard players set #has_valid_recipe temp 1

execute if score #has_valid_recipe temp matches 1 if items block ~ ~ ~ container.4 air run scoreboard players set #clicked_slot temp 4
execute if score #has_valid_recipe temp matches 1 if items block ~ ~ ~ container.5 air run scoreboard players set #clicked_slot temp 5
execute if score #has_valid_recipe temp matches 1 if items block ~ ~ ~ container.6 air run scoreboard players set #clicked_slot temp 6
execute if score #has_valid_recipe temp matches 1 if items block ~ ~ ~ container.7 air run scoreboard players set #clicked_slot temp 7
execute if score #has_valid_recipe temp matches 1 if items block ~ ~ ~ container.13 air run scoreboard players set #clicked_slot temp 13
execute if score #has_valid_recipe temp matches 1 if items block ~ ~ ~ container.14 air run scoreboard players set #clicked_slot temp 14

execute if score #clicked_slot temp matches 4 run scoreboard players set #clicked_pot_type temp 1
execute if score #clicked_slot temp matches 5 run scoreboard players set #clicked_pot_type temp 2
execute if score #clicked_slot temp matches 6 run scoreboard players set #clicked_pot_type temp 3
execute if score #clicked_slot temp matches 7 run scoreboard players set #clicked_pot_type temp 4
execute if score #clicked_slot temp matches 13 run scoreboard players set #clicked_pot_type temp 5
execute if score #clicked_slot temp matches 14 run scoreboard players set #clicked_pot_type temp 6

execute unless score #clicked_slot temp matches -1 run function rotp:active/pottery_wheel/process_pot_click

scoreboard players reset #clicked_slot temp
scoreboard players reset #clicked_pot_type temp
scoreboard players reset #has_valid_recipe temp