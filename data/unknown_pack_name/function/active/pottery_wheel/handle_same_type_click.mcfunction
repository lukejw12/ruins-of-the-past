scoreboard players set #same_type_handled temp 1

execute if score #player_pot_count temp matches 2.. run function unknown_pack_name:active/pottery_wheel/give_extra_pots
execute if score #player_pot_count temp matches 1 run function unknown_pack_name:active/pottery_wheel/prevent_single_pot_click