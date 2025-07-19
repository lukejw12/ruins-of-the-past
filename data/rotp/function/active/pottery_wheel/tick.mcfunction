scoreboard players add @s tick_counter 1

execute if score @s just_consumed matches 1.. run scoreboard players remove @s just_consumed 1

execute unless block ~ ~ ~ barrel run execute as @e[type=item_display,tag=pottery_wheel_display,distance=..2] if score @s pottery_wheel_id = @e[type=marker,tag=pottery_wheel,limit=1,sort=nearest] pottery_wheel_id run kill @s
execute unless block ~ ~ ~ barrel run kill @s

#execute as @e[type=item_display,tag=pottery_wheel_display,distance=..1] if score @s pottery_wheel_id = @e[type=marker,tag=pottery_wheel,limit=1,sort=nearest] pottery_wheel_id run function rotp:active/pottery_wheel/animate_display

execute if score @s tick_counter matches 2 run function rotp:active/pottery_wheel/clear_result_slots_if_needed
execute if score @s tick_counter matches 2 run function rotp:active/pottery_wheel/check_wrong_pots_in_results
execute if score @s tick_counter matches 2 run function rotp:active/pottery_wheel/check_excess_pots
execute if score @s tick_counter matches 2 if block ~ ~ ~ barrel[open=true] run function rotp:active/pottery_wheel/check_result_taken
execute if score @s tick_counter matches 2 run function rotp:active/pottery_wheel/fill_gui_slots
execute if score @s tick_counter matches 2 run function rotp:active/pottery_wheel/check_recipe
execute if score @s tick_counter matches 2 run data merge block ~ ~ ~ {CustomName:"Pottery Wheel"}
execute if score @s tick_counter matches 1 run kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{gui_filler:1b}}}}]

execute if score @s tick_counter matches 2.. run scoreboard players set @s tick_counter 0
execute if block ~ ~ ~ barrel[open=false] run function rotp:active/pottery_wheel/clear_result_slots
execute if block ~ ~ ~ barrel[open=false] run function rotp:active/pottery_wheel/clear_gui_slots
execute if block ~ ~ ~ barrel[open=false] run scoreboard players set @s has_result 0
