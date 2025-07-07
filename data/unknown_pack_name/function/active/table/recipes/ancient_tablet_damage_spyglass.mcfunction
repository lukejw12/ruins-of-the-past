execute if items block ~ ~ ~ container.11 spyglass[!max_damage] run item replace block ~ ~ ~ container.11 with minecraft:spyglass[minecraft:max_damage=309,minecraft:damage=0]
item modify block ~ ~ ~ container.11 unknown_pack_name:damage_spyglass

item modify block ~ ~ ~ container.10 {function:set_count,count:-1,add:true}
function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results

execute at @p[distance=..10] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0,Motion:[0.0,0.1,0.0]}