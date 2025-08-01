scoreboard players operation #current_pedestal_id temp = @s pedestal_id

execute if data entity @s data.stored_item.id run function rotp:core/block/placed/pedestal/drop_stored_item

execute as @e[tag=nested_pedestal_interaction] if score @s pedestal_id = #current_pedestal_id temp if data entity @s data.stored_item.id at @s run summon item ~ ~ ~ {Item:{id:"stone",count:1},PickupDelay:10,Motion:[0.0,0.1,0.0]}
execute as @e[tag=nested_pedestal_interaction] if score @s pedestal_id = #current_pedestal_id temp if data entity @s data.stored_item.id at @s as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from entity @e[tag=nested_pedestal_interaction,limit=1,sort=nearest] data.stored_item

execute as @e[tag=nano_pedestal_interaction] if score @s pedestal_id = #current_pedestal_id temp if data entity @s data.stored_item.id at @s run summon item ~ ~ ~ {Item:{id:"stone",count:1},PickupDelay:10,Motion:[0.0,0.1,0.0]}
execute as @e[tag=nano_pedestal_interaction] if score @s pedestal_id = #current_pedestal_id temp if data entity @s data.stored_item.id at @s as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from entity @e[tag=nano_pedestal_interaction,limit=1,sort=nearest] data.stored_item

execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air

execute as @e[tag=nano_item_display] if score @s pedestal_id = #current_pedestal_id temp run kill @s
execute as @e[tag=nano_pedestal_interaction] if score @s pedestal_id = #current_pedestal_id temp run kill @s
execute as @e[tag=tiny_item_display] if score @s pedestal_id = #current_pedestal_id temp run kill @s
execute as @e[tag=nested_pedestal_interaction] if score @s pedestal_id = #current_pedestal_id temp run kill @s
execute as @e[tag=pedestal_item_display] if score @s pedestal_id = #current_pedestal_id temp run kill @s
execute as @e[tag=pedestal_display] if score @s pedestal_id = #current_pedestal_id temp run kill @s
execute as @e[tag=pedestal_marker] if score @s pedestal_id = #current_pedestal_id temp run kill @s
summon item ~ ~0.2 ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:stonecutter",count:1,components:{"minecraft:custom_data":{pedestal_placable:1b},"minecraft:item_model":"rotp:blocks/handheld/pedestal","minecraft:item_name":{"color":"white","text":"Pedestal"}}}}
item modify entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrel"}}] contents {function:"set_count",count:-1,add:true}
kill @s

particle block{block_state:tuff} ~ ~0.5 ~ 0.25 0.25 0.25 0 50
playsound block.stone.break block @a[distance=..8]

scoreboard players reset #current_pedestal_id temp