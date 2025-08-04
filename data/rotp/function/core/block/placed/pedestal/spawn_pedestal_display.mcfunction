execute store result score #next_pedestal_id temp run random value 1000..999999

data modify storage rotp:temp original_item_data set from entity @s SelectedItem

execute if block ~ ~ ~ blast_furnace[facing=south] align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pedestal"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pedestal_display","needs_id"]}

execute if block ~ ~ ~ blast_furnace[facing=north] align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pedestal"}},transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pedestal_display","needs_id"]}

execute if block ~ ~ ~ blast_furnace[facing=east] align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pedestal"}},transformation:{left_rotation:[0f,0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pedestal_display","needs_id"]}

execute if block ~ ~ ~ blast_furnace[facing=west] align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pedestal"}},transformation:{left_rotation:[0f,-0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pedestal_display","needs_id"]}

setblock ~ ~ ~ barrier

summon marker ~ ~ ~ {Tags:["pedestal_marker","needs_id"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon interaction ~ ~-0.5 ~ {width:1.02f,height:1.02f,Tags:["pedestal_interaction","needs_id"],data:{stored_item:{},pedestal_item:{}}}

execute as @e[tag=pedestal_interaction,tag=needs_id,distance=..1.5,limit=1] run data modify entity @s data.pedestal_item set from storage rotp:temp original_item_data

execute as @e[tag=needs_id,distance=..1.5] run scoreboard players operation @s pedestal_id = #next_pedestal_id temp

execute if data storage rotp:temp original_item_data.components."minecraft:custom_data".dyed run function rotp:core/block/placed/pedestal/restore_dye_on_place

execute as @e[tag=needs_id,distance=..1.5] run tag @s remove needs_id

scoreboard players reset #next_pedestal_id temp