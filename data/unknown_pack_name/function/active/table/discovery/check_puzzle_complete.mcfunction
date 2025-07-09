execute if data storage unknown_pack_name:puzzle_game {type:"dig_site"} run function unknown_pack_name:active/table/discovery/check_dig_site_completion
execute unless data storage unknown_pack_name:puzzle_game {type:"dig_site"} run function unknown_pack_name:active/table/discovery/check_standard_completion

scoreboard players reset #puzzle_complete temp