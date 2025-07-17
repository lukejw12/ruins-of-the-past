execute store result storage unknown_pack_name:temp required_levels int 1 run scoreboard players get #required_levels temp
$execute store result storage unknown_pack_name:temp slot int 1 run scoreboard players set #slot_temp temp $(slot)
function unknown_pack_name:active/rune_table/display_sufficient_arrow with storage unknown_pack_name:temp
scoreboard players reset #slot_temp temp