$data modify storage unknown_pack_name:temp return_item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
execute at @p[distance=..10] run summon item ~ ~ ~ {Item:{id:stone},PickupDelay:0,Motion:[0.0,0.1,0.0]}
execute at @p[distance=..10] as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from storage unknown_pack_name:temp return_item
$item replace block ~ ~ ~ container.$(slot) with air