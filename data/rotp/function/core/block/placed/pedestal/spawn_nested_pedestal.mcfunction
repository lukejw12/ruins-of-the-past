data modify entity @s data.stored_item set from storage rotp:temp player_item
data modify entity @s data.stored_item.count set value 1
execute store result score #player_count temp run data get storage rotp:temp player_item.count
scoreboard players remove #player_count temp 1

execute if score #player_count temp matches 1.. run function rotp:core/block/placed/pedestal/update_player_hand
execute if score #player_count temp matches 0 run item replace entity @p[distance=..10] weapon.mainhand with air

function rotp:core/block/placed/pedestal/spawn_floating_item
scoreboard players operation #current_pedestal_id temp = @s pedestal_id

execute as @e[tag=pedestal_item_display] if score @s pedestal_id = #current_pedestal_id temp run tag @s add floating_pedestal

execute at @e[tag=floating_pedestal,limit=1] run summon interaction ~ ~-0.26 ~ {width:0.51f,height:0.51f,Tags:["nested_pedestal_interaction","needs_nested_id"],data:{stored_item:{}}}

execute as @e[tag=needs_nested_id,distance=..3] run scoreboard players operation @s pedestal_id = #current_pedestal_id temp
execute as @e[tag=needs_nested_id,distance=..3] run tag @s remove needs_nested_id

tag @e[tag=floating_pedestal] remove floating_pedestal
particle dust_plume ~ ~0.8 ~ 0.1 0.1 0.1 0.02 3

scoreboard players reset #player_count temp
scoreboard players reset #current_pedestal_id temp