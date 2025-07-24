scoreboard players set #recipe_was_valid temp 0
execute if items block ~ ~ ~ container.1 #rotp:pottery_materials if items block ~ ~ ~ container.9 #rotp:pottery_materials if items block ~ ~ ~ container.11 #rotp:pottery_materials if items block ~ ~ ~ container.19 #rotp:pottery_materials run scoreboard players set #recipe_was_valid temp 1

data modify storage rotp:temp player_pot_data set from entity @p[distance=..10,limit=1] SelectedItem.components."minecraft:custom_data"

execute unless data storage rotp:temp player_pot_data.pot_item run return 0

data modify storage rotp:temp player_pot_type set from storage rotp:temp player_pot_data.pot_type
execute store result score #player_pot_count temp run data get entity @p[distance=..10] SelectedItem.count

execute if score #recipe_was_valid temp matches 1 if score #clicked_pot_type temp matches 1 if data storage rotp:temp {player_pot_type:"thin"} run function rotp:active/pottery_wheel/handle_same_type_click
execute if score #recipe_was_valid temp matches 1 if score #clicked_pot_type temp matches 2 if data storage rotp:temp {player_pot_type:"slab"} run function rotp:active/pottery_wheel/handle_same_type_click
execute if score #recipe_was_valid temp matches 1 if score #clicked_pot_type temp matches 3 if data storage rotp:temp {player_pot_type:"small"} run function rotp:active/pottery_wheel/handle_same_type_click
execute if score #recipe_was_valid temp matches 1 if score #clicked_pot_type temp matches 4 if data storage rotp:temp {player_pot_type:"square"} run function rotp:active/pottery_wheel/handle_same_type_click
execute if score #recipe_was_valid temp matches 1 if score #clicked_pot_type temp matches 5 if data storage rotp:temp {player_pot_type:"large"} run function rotp:active/pottery_wheel/handle_same_type_click
execute if score #recipe_was_valid temp matches 1 if score #clicked_pot_type temp matches 6 if data storage rotp:temp {player_pot_type:"vase"} run function rotp:active/pottery_wheel/handle_same_type_click

execute unless score #same_type_handled temp matches 1 run function rotp:active/pottery_wheel/handle_different_type_click

scoreboard players reset #same_type_handled temp
scoreboard players reset #player_pot_count temp
scoreboard players reset #recipe_was_valid temp