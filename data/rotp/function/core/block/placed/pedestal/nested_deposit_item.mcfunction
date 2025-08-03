execute unless data entity @a[tag=pedestal_interact,limit=1,sort=nearest] SelectedItem.id run return 0
execute if data entity @s data.stored_item.id run return 0

data modify storage rotp:temp player_item set from entity @a[tag=pedestal_interact,limit=1,sort=nearest] SelectedItem

execute if data storage rotp:temp player_item.components."minecraft:custom_data".pedestal_placable run function rotp:core/block/placed/pedestal/spawn_nano_pedestal
execute if data storage rotp:temp player_item.components."minecraft:custom_data".pedestal_placable run return 0

data modify entity @s data.stored_item set from storage rotp:temp player_item
data modify entity @s data.stored_item.count set value 1

execute store result score #player_count temp run data get storage rotp:temp player_item.count
scoreboard players remove #player_count temp 1

execute if score #player_count temp matches 1.. run function rotp:core/block/placed/pedestal/update_player_hand
execute if score #player_count temp matches 0 run item replace entity @a[tag=pedestal_interact,limit=1,sort=nearest] weapon.mainhand with air

summon item_display ~ ~0.8 ~ {item:{id:"stone",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]},Tags:["tiny_item_display","needs_tiny_id"]}

execute as @e[tag=needs_tiny_id,distance=..3] run data modify entity @s item set from entity @e[tag=nested_pedestal_interaction,limit=1,sort=nearest] data.stored_item

scoreboard players operation #current_pedestal_id temp = @s pedestal_id
execute as @e[tag=needs_tiny_id,distance=..3] run scoreboard players operation @s pedestal_id = #current_pedestal_id temp
execute as @e[tag=needs_tiny_id,distance=..3] run tag @s remove needs_tiny_id

particle dust_plume ~ ~.5 ~ 0.1 0.1 0.1 0.02 3

scoreboard players reset #player_count temp
scoreboard players reset #current_pedestal_id temp