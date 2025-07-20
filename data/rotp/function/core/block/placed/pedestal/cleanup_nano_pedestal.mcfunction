scoreboard players operation #current_pedestal_id temp = @s pedestal_id
execute as @e[tag=nano_pedestal_interaction] if score @s pedestal_id = #current_pedestal_id temp if data entity @s data.stored_item.id at @s run summon item ~ ~ ~ {Item:{id:"stone",count:1},PickupDelay:10,Motion:[0.0,0.1,0.0]}
execute as @e[tag=nano_pedestal_interaction] if score @s pedestal_id = #current_pedestal_id temp if data entity @s data.stored_item.id at @s as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from entity @e[tag=nano_pedestal_interaction,limit=1,sort=nearest] data.stored_item
execute as @e[tag=nano_item_display] if score @s pedestal_id = #current_pedestal_id temp run kill @s
execute as @e[tag=nano_pedestal_interaction] if score @s pedestal_id = #current_pedestal_id temp run kill @s

scoreboard players reset #current_pedestal_id temp