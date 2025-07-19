##scoreboard players add @s animation_timer 1\
execute if score @s animation_timer matches 5 run item modify entity @s contents {function:"set_components",components:{"minecraft:item_model":"rotp:blocks/placed/pottery_wheel/pottery_wheel_1"}}\
execute if score @s animation_timer matches 10 run item modify entity @s contents {function:"set_components",components:{"minecraft:item_model":"rotp:blocks/placed/pottery_wheel/pottery_wheel_2"}}\
execute if score @s animation_timer matches 15 run item modify entity @s contents {function:"set_components",components:{"minecraft:item_model":"rotp:blocks/placed/pottery_wheel/pottery_wheel_3"}}\
execute if score @s animation_timer matches 20 run item modify entity @s contents {function:"set_components",components:{"minecraft:item_model":"rotp:blocks/placed/pottery_wheel/pottery_wheel_0"}}\
\
execute if score @s animation_timer matches 20.. run scoreboard players set @s animation_timer 0

#SCRAPPED