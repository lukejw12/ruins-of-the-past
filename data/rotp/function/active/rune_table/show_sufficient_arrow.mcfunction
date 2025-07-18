execute store result storage rotp:temp required_levels int 1 run scoreboard players get #required_levels temp
$execute store result storage rotp:temp slot int 1 run scoreboard players set #slot_temp temp $(slot)
function rotp:active/rune_table/display_sufficient_arrow with storage rotp:temp
scoreboard players reset #slot_temp temp