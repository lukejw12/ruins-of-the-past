scoreboard players operation #current_pot_id temp = @s pot_id

data modify storage unknown_pack_name:temp broken_pot_data set from entity @s data.stored_item

summon item ~ ~ ~ {Item:{id:"barrier",count:1},PickupDelay:10,Motion:[0.0,0.1,0.0]}

execute as @e[type=item,distance=..1,limit=1,sort=nearest] run function unknown_pack_name:sub/restore_pot_item_data

execute as @e[scores={pot_id=0..}] if score @s pot_id = #current_pot_id temp run kill @s

execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air

scoreboard players reset #current_pot_id temp