data modify storage unknown_pack_name:puzzle_game puzzle_active set value 0b
tellraw @p[distance=..10] [{"text":"Puzzle Complete!","color":"green","bold":true}]

execute if data storage unknown_pack_name:puzzle_game {type:"accessory"} run function unknown_pack_name:active/table/discovery/set_accessory_subtype
execute if data storage unknown_pack_name:puzzle_game {type:"rune"} run function unknown_pack_name:active/table/discovery/set_rune_subtype
execute if data storage unknown_pack_name:puzzle_game {type:"dig_site"} run function unknown_pack_name:active/table/discovery/set_dig_site_subtype

execute if data storage unknown_pack_name:puzzle_game {type:"dig_site"} run function unknown_pack_name:active/table/discovery/generate_dig_site_final_reward
execute unless data storage unknown_pack_name:puzzle_game {type:"dig_site"} run scoreboard players set @s level3_delay 60

