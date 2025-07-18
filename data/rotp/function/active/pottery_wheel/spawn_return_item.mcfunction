$execute at @p[distance=..10] run summon item ~ ~ ~ {Item:{id:"$(id)",count:$(count)},PickupDelay:0,Motion:[0.0,0.1,0.0]}
execute at @p[distance=..10] as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item.components set from storage rotp:temp return_item.components
