execute unless data entity @s data.stored_item.id run return 0
execute at @p[distance=..10] run summon item ~ ~ ~ {Item:{id:"stone",count:1},PickupDelay:0,Motion:[0.0,0.1,0.0]}
execute at @p[distance=..10] as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from entity @e[tag=pedestal_interaction,limit=1,sort=nearest] data.stored_item

data modify entity @s data.stored_item set value {}

scoreboard players operation #current_pedestal_id temp = @s pedestal_id
execute as @e[tag=pedestal_item_display] if score @s pedestal_id = #current_pedestal_id temp run kill @s

particle dust_plume ~ ~1 ~ 0.2 0.2 0.2 0.05 5

scoreboard players reset #current_pedestal_id temp