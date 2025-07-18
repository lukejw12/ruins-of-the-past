execute if data storage rotp:puzzle_game {type:"dig_site"} run function rotp:active/table/discovery/check_dig_site_completion
execute unless data storage rotp:puzzle_game {type:"dig_site"} run function rotp:active/table/discovery/check_standard_completion

scoreboard players reset #puzzle_complete temp