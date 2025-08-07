execute unless block ~ ~ ~ barrel run function rotp:active/pottery_wheel/destroy
execute if score @s tick_counter matches 2.. run scoreboard players set @s tick_counter 0
execute if score @s tick_counter matches 1 if block ~ ~ ~ barrel[open=false] run function rotp:active/pottery_wheel/clear_result_slots
execute if score @s tick_counter matches 1 if block ~ ~ ~ barrel[open=false] run function rotp:active/pottery_wheel/clear_gui_slots
execute if score @s tick_counter matches 1 if block ~ ~ ~ barrel[open=false] run scoreboard players set @s has_result 0
execute unless data block ~ ~ ~ {CustomName:"Pottery Wheel"} run data merge block ~ ~ ~ {CustomName:"Pottery Wheel"}

scoreboard players add @s tick_counter 1
execute unless block ~ ~ ~ barrel[open=true] run return 0

execute if score @s just_consumed matches 1.. run scoreboard players remove @s just_consumed 1

execute if score @s tick_counter matches 2 if block ~ ~ ~ barrel[open=true] run function rotp:active/pottery_wheel/handle_open_operations