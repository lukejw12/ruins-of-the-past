execute store result storage rotp:temp slot_number int 1 run scoreboard players get #clicked_slot temp
function rotp:active/pottery_wheel/restore_result_slot
item replace entity @p[distance=..10] weapon.mainhand with air