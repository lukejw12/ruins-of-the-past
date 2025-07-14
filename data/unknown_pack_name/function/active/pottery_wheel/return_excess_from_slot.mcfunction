$data modify storage unknown_pack_name:temp excess_item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$execute store result score #excess_count temp run data get block ~ ~ ~ Items[{Slot:$(slot)b}].count
scoreboard players remove #excess_count temp 1
execute store result storage unknown_pack_name:temp excess_item.count int 1 run scoreboard players get #excess_count temp

execute at @p[distance=..10] run summon item ~ ~ ~ {Item:{id:barrier},PickupDelay:0,Motion:[0.0,0.1,0.0]}
execute at @p[distance=..10] as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from storage unknown_pack_name:temp excess_item

$item modify block ~ ~ ~ container.$(slot) {function:set_count,count:1}

scoreboard players reset #excess_count temp