data modify entity @s data.stored_item set from storage rotp:temp player_item
data modify entity @s data.stored_item.count set value 1
execute store result score #player_count temp run data get storage rotp:temp player_item.count
scoreboard players remove #player_count temp 1

execute if score #player_count temp matches 1.. run function rotp:core/block/placed/pedestal/update_player_hand
execute if score #player_count temp matches 0 run item replace entity @p[distance=..10] weapon.mainhand with air

scoreboard players operation #current_pedestal_id temp = @s pedestal_id

summon item_display ~ ~0.8 ~ {item:{id:"stone",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]},Tags:["tiny_item_display","floating_tiny_pedestal","needs_tiny_id"]}

execute as @e[tag=needs_tiny_id,distance=..1] run data modify entity @s item set from entity @e[tag=nested_pedestal_interaction,limit=1,sort=nearest] data.stored_item
execute as @e[tag=needs_tiny_id,distance=..1] run scoreboard players operation @s pedestal_id = #current_pedestal_id temp
execute as @e[tag=needs_tiny_id,distance=..1] run tag @s remove needs_tiny_id

execute at @e[tag=floating_tiny_pedestal,limit=1] run summon interaction ~ ~-0.1 ~ {width:0.25f,height:0.25f,Tags:["nano_pedestal_interaction","needs_nano_id"],data:{stored_item:{}}}

execute as @e[tag=needs_nano_id,distance=..3] run scoreboard players operation @s pedestal_id = #current_pedestal_id temp
execute as @e[tag=needs_nano_id,distance=..3] run tag @s remove needs_nano_id

tag @e[tag=floating_tiny_pedestal] remove floating_tiny_pedestal
particle dust_plume ~ ~0.8 ~ 0.1 0.1 0.1 0.02 3

scoreboard players reset #player_count temp
scoreboard players reset #current_pedestal_id temp