function unknown_pack_name:active/pottery_wheel/check_result_taken
function unknown_pack_name:active/pottery_wheel/fill_gui_slots
execute unless block ~ ~ ~ barrel run kill @s
data merge block ~ ~ ~ {CustomName:"Pottery Wheel"}
function unknown_pack_name:active/pottery_wheel/check_recipe
kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{gui_filler:1b}}}}]