function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/get_stored_item_data with storage unknown_pack_name:temp

execute store result storage unknown_pack_name:temp stored_item_data.count int 1 run scoreboard players get #stored_count temp

summon item ~ ~ ~ {Item:{id:"stone",count:1},PickupDelay:10,Motion:[0.0,0.1,0.0]}
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from storage unknown_pack_name:temp stored_item_data
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run tp @s ~ ~ ~0.2

