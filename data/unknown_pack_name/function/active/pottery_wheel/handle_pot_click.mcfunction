scoreboard players set #clicked_slot temp -1
scoreboard players set #clicked_pot_type temp -1

execute if items block ~ ~ ~ container.4 air run scoreboard players set #clicked_slot temp 4
execute if items block ~ ~ ~ container.5 air run scoreboard players set #clicked_slot temp 5
execute if items block ~ ~ ~ container.6 air run scoreboard players set #clicked_slot temp 6
execute if items block ~ ~ ~ container.7 air run scoreboard players set #clicked_slot temp 7

execute if score #clicked_slot temp matches 4 run scoreboard players set #clicked_pot_type temp 1
execute if score #clicked_slot temp matches 5 run scoreboard players set #clicked_pot_type temp 2
execute if score #clicked_slot temp matches 6 run scoreboard players set #clicked_pot_type temp 3
execute if score #clicked_slot temp matches 7 run scoreboard players set #clicked_pot_type temp 4

execute unless score #clicked_slot temp matches -1 run function unknown_pack_name:active/pottery_wheel/process_pot_click

scoreboard players reset #clicked_slot temp
scoreboard players reset #clicked_pot_type temp