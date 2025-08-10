$scoreboard players set #target_level temp $(required_levels)
function rotp:transcriber/conversion/levels_to_points
execute store result storage rotp:temp required_points int 1 run scoreboard players get #output_points temp
function rotp:active/rune_table/show_sufficient_points_arrow with storage rotp:temp
scoreboard players reset #target_level temp