
execute store result score #next_pedestal_id temp run random value 1000000..9999999

execute if block ~ ~ ~ command_block[facing=south] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pedestal"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pedestal_display","needs_id"]}

execute if block ~ ~ ~ command_block[facing=north] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pedestal"}},transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pedestal_display","needs_id"]}

execute if block ~ ~ ~ command_block[facing=east] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pedestal"}},transformation:{left_rotation:[0f,0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pedestal_display","needs_id"]}

execute if block ~ ~ ~ command_block[facing=west] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pedestal"}},transformation:{left_rotation:[0f,-0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pedestal_display","needs_id"]}
summon marker ~ ~ ~ {Tags:["pedestal_marker","needs_id"]}

setblock ~ ~ ~ barrier
summon interaction ~ ~-0.5 ~ {width:1.02f,height:1.02f,Tags:["pedestal_interaction","needs_id"],data:{stored_item:{}}}

setblock ~ ~10 ~ chest

$loot insert ~ ~10 ~ loot $(loot_table)

execute as @e[tag=pedestal_interaction,distance=..2,limit=1,tag=needs_id] run data modify entity @s data.stored_item set from block ~ ~10 ~ Items[0]

summon item_display ~ ~1.2 ~ {item:{id:"stone",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["pedestal_item_display","needs_id"]}

execute as @e[tag=pedestal_item_display,distance=..2,limit=1,tag=needs_id] run data modify entity @s item set from block ~ ~10 ~ Items[0]
data modify entity @e[tag=pedestal_interaction,limit=1,distance=..2,tag=needs_id] data.stored_item.count set value 1
setblock ~ ~10 ~ air

execute as @e[tag=needs_id,distance=..2] run scoreboard players operation @s pedestal_id = #next_pedestal_id temp
execute as @e[tag=needs_id] run tag @s remove needs_id

scoreboard players reset #next_pedestal_id temp