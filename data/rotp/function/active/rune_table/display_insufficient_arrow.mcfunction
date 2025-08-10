$scoreboard players set #target_level temp $(required_levels)
function rotp:transcriber/conversion/levels_to_points
execute store result storage rotp:temp required_points int 1 run scoreboard players get #output_points temp
$execute store result storage rotp:temp slot int 1 run scoreboard players set #slot_temp temp $(slot)
function rotp:active/rune_table/show_insufficient_points_arrow with storage rotp:temp
scoreboard players reset #slot_temp temp
scoreboard players reset #target_level temp