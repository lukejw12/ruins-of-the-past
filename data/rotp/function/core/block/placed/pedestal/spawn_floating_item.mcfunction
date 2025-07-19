scoreboard players operation #current_pedestal_id temp = @s pedestal_id
execute as @e[tag=pedestal_marker] if score @s pedestal_id = #current_pedestal_id temp run tag @s add target_marker

execute at @e[tag=target_marker,limit=1] run summon item_display ~ ~1.2 ~ {item:{id:"stone",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},Tags:["pedestal_item_display","needs_id"]}

execute as @e[tag=needs_id,distance=..5] run data modify entity @s item set from entity @e[tag=pedestal_interaction,limit=1,sort=nearest] data.stored_item

execute as @e[tag=needs_id,distance=..5] run scoreboard players operation @s pedestal_id = #current_pedestal_id temp
execute as @e[tag=needs_id,distance=..5] run tag @s remove needs_id

tag @e[tag=target_marker] remove target_marker
scoreboard players reset #current_pedestal_id temp