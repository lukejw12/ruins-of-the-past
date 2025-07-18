execute store result storage rotp:temp slot_number int 1 run scoreboard players get #clicked_slot temp
function rotp:active/pottery_wheel/restore_result_slot with storage rotp:temp

execute at @p[distance=..10] run summon item ~ ~ ~ {Item:{id:"barrier",count:1},PickupDelay:0,Motion:[0.0,0.1,0.0]}
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from storage rotp:temp player_pot_data

item replace entity @p[distance=..10] weapon.mainhand with air