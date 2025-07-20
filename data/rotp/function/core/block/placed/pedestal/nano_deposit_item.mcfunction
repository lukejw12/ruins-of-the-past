execute unless data entity @p[distance=..10] SelectedItem.id run return 0
execute if data entity @s data.stored_item.id run return 0

data modify storage rotp:temp player_item set from entity @p[distance=..10] SelectedItem

data modify entity @s data.stored_item set from storage rotp:temp player_item
data modify entity @s data.stored_item.count set value 1

execute store result score #player_count temp run data get storage rotp:temp player_item.count
scoreboard players remove #player_count temp 1

execute if score #player_count temp matches 1.. run function rotp:core/block/placed/pedestal/update_player_hand
execute if score #player_count temp matches 0 run item replace entity @p[distance=..10] weapon.mainhand with air

scoreboard players operation #current_pedestal_id temp = @s pedestal_id

execute as @e[tag=tiny_item_display] if score @s pedestal_id = #current_pedestal_id temp run tag @s add target_tiny_item

execute at @e[tag=target_tiny_item,limit=1] run summon item_display ~ ~0.3 ~ {item:{id:"stone",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.125f]},Tags:["nano_item_display","needs_nano_id"]}

execute as @e[tag=needs_nano_id,distance=..5] run data modify entity @s item set from entity @e[tag=nano_pedestal_interaction,limit=1,sort=nearest] data.stored_item
execute as @e[tag=needs_nano_id,distance=..5] run scoreboard players operation @s pedestal_id = #current_pedestal_id temp
execute as @e[tag=needs_nano_id,distance=..5] run tag @s remove needs_nano_id

execute at @e[tag=target_tiny_item,limit=1] run particle dust_plume ~ ~0.4 ~ 0.02 0.02 0.02 0.01 2
tag @e[tag=target_tiny_item] remove target_tiny_item


scoreboard players reset #player_count temp
scoreboard players reset #current_pedestal_id temp