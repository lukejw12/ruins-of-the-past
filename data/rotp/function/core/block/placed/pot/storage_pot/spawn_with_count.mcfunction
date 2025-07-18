$summon item ~ ~ ~ {Item:{id:"stone",count:$(spawn_count)},PickupDelay:10,Motion:[0.0,4,-1]}
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item.id set from storage rotp:temp stored_item_data.id
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item.components set from storage rotp:temp stored_item_data.components
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run tp @s ~ ~ ~1
