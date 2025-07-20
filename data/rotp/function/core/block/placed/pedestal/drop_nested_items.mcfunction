execute if data entity @s data.stored_item.id at @s run summon item ~ ~ ~ {Item:{id:"stone",count:1},PickupDelay:10,Motion:[0.0,0.1,0.0]}
execute if data entity @s data.stored_item.id at @s as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from entity @e[tag=nested_pedestal_interaction,limit=1,sort=nearest] data.stored_item
scoreboard players operation #current_pedestal_id temp = @s pedestal_id
execute as @e[tag=tiny_item_display] if score @s pedestal_id = #current_pedestal_id temp at @s run summon item ~ ~ ~ {Item:{id:"stone",count:1},PickupDelay:10,Motion:[0.0,0.1,0.0]}
execute as @e[tag=tiny_item_display] if score @s pedestal_id = #current_pedestal_id temp at @s as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from entity @e[tag=tiny_item_display,limit=1,sort=nearest] item

scoreboard players reset #current_pedestal_id temp