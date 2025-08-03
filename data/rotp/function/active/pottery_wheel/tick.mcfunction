kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{gui_filler:1b}}}}]
execute unless block ~ ~ ~ barrel run execute as @e[type=item_display,tag=pottery_wheel_display,distance=..2] if score @s pottery_wheel_id = @e[type=marker,tag=pottery_wheel,limit=1,sort=nearest] pottery_wheel_id run kill @s
execute unless block ~ ~ ~ barrel run kill @s
execute unless block ~ ~ ~ barrel run item modify entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrel"}}] contents {function:"set_count",count:-1,add:true}
execute unless block ~ ~ ~ barrel run summon item ~ ~0.2 ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:smoker",count:1,components:{"minecraft:custom_data":{pottery_wheel_placable:1b},"minecraft:item_model":"rotp:blocks/handheld/pottery_wheel","minecraft:item_name":{"color":"white","text":"Pottery Wheel"}}}}
execute if score @s tick_counter matches 2.. run scoreboard players set @s tick_counter 0
execute if score @s tick_counter matches 1 if block ~ ~ ~ barrel[open=false] run function rotp:active/pottery_wheel/clear_result_slots
execute if score @s tick_counter matches 1 if block ~ ~ ~ barrel[open=false] run function rotp:active/pottery_wheel/clear_gui_slots
execute if score @s tick_counter matches 1 if block ~ ~ ~ barrel[open=false] run scoreboard players set @s has_result 0
data merge block ~ ~ ~ {CustomName:"Pottery Wheel"}

scoreboard players add @s tick_counter 1
execute unless block ~ ~ ~ barrel[open=true] run return 0

execute if score @s just_consumed matches 1.. run scoreboard players remove @s just_consumed 1


execute if score @s tick_counter matches 2 if block ~ ~ ~ barrel[open=true] run function rotp:active/pottery_wheel/clear_result_slots_if_needed
execute if score @s tick_counter matches 2 if block ~ ~ ~ barrel[open=true] run function rotp:active/pottery_wheel/check_wrong_pots_in_results
execute if score @s tick_counter matches 2 if block ~ ~ ~ barrel[open=true] run function rotp:active/pottery_wheel/check_excess_pots
execute if score @s tick_counter matches 2 if block ~ ~ ~ barrel[open=true] run function rotp:active/pottery_wheel/check_result_taken
execute if score @s tick_counter matches 2 if block ~ ~ ~ barrel[open=true] run function rotp:active/pottery_wheel/fill_gui_slots
execute if score @s tick_counter matches 2 if block ~ ~ ~ barrel[open=true] run function rotp:active/pottery_wheel/check_recipe

