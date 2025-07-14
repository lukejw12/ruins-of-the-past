execute store result storage unknown_pack_name:temp slot_number int 1 run scoreboard players get #clicked_slot temp
function unknown_pack_name:active/pottery_wheel/restore_result_slot
item replace entity @p[distance=..10] weapon.mainhand with air