scoreboard players operation #current_pot_id temp = @s pot_id
particle block{block_state:decorated_pot} ~ ~0.5 ~ 0.25 0.25 0.25 0 50
playsound block.decorated_pot.break block @a[distance=.8]

data modify storage unknown_pack_name:temp broken_pot_data set from entity @s data.stored_item

execute if data storage unknown_pack_name:temp broken_pot_data.components."minecraft:custom_data".storage_pot unless data storage unknown_pack_name:temp broken_pot_data.components."minecraft:custom_data".linked_storage if entity @s[scores={storage_pot_id=1..}] run function unknown_pack_name:core/block/placed/pot/storage_pot/drop_all_contents

summon item ~ ~ ~ {Item:{id:"barrier",count:1},PickupDelay:10,Motion:[0.0,0.1,0.0]}
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run function unknown_pack_name:sub/restore_pot_item_data

execute as @e[scores={pot_id=0..}] if score @s pot_id = #current_pot_id temp run kill @s

execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air

scoreboard players reset #current_pot_id temp