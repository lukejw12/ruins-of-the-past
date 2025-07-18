summon item ~ ~ ~ {Item:{id:"stone",count:1},PickupDelay:10,Motion:[0.0,0.1,0.0]}
$execute as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from storage rotp:storage_pots $(storage_id).item_data
$execute as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item.count set value $(count)
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run tp @s ~ ~ ~
