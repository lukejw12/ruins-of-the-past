$summon item ~ ~ ~0.1 {Item:{id:"stone",count:$(spawn_count)},PickupDelay:10,Motion:[0.0,0.2,-0.05],Tags:["new"]}
execute as @e[type=item,distance=..1,limit=1,sort=nearest,tag=new] run data modify entity @s Item.id set from storage rotp:temp stored_item_data.id
execute as @e[type=item,distance=..1,limit=1,sort=nearest,tag=new] run data modify entity @s Item.components set from storage rotp:temp stored_item_data.components
execute as @e[type=item,distance=..1,limit=1,sort=nearest,tag=new] at @s run tp @s ~ ~ ~
execute as @e[type=item,distance=..1,limit=1,sort=nearest,tag=new] run tag @s remove new