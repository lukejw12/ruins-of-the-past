data modify storage unknown_pack_name:puzzle_game puzzle_active set value 0b
tellraw @p[distance=..10] [{"text":"Puzzle Complete!","color":"green","bold":true}]

execute if data storage unknown_pack_name:puzzle_game {type:"accessory"} run function unknown_pack_name:active/table/discovery/set_accessory_subtype
execute if data storage unknown_pack_name:puzzle_game {type:"rune"} run function unknown_pack_name:active/table/discovery/set_rune_subtype
execute if data storage unknown_pack_name:puzzle_game {type:"dig_site"} run function unknown_pack_name:active/table/discovery/set_dig_site_subtype

function unknown_pack_name:active/table/discovery/generate_random_rarity

scoreboard players set @s completion_delay 60
