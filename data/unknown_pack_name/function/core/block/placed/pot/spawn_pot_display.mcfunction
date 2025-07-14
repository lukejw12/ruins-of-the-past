execute store result score #next_pot_id temp run random value 1000..9999
execute store result score #next_storage_id temp run random value 10000..99999

data modify storage unknown_pack_name:temp original_item_data set from entity @p[distance=..10,limit=1] SelectedItem
data modify storage unknown_pack_name:temp original_item_data.count set value 1
data modify storage unknown_pack_name:temp pot_data set from storage unknown_pack_name:temp original_item_data.components."minecraft:custom_data"

setblock ~ ~ ~ barrier

execute if data storage unknown_pack_name:temp pot_data{pot_type:"thin"} run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"unknown_pack_name:pottery/pot_type_thin"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}

execute if data storage unknown_pack_name:temp pot_data{pot_type:"slab"} run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"unknown_pack_name:pottery/pot_type_slab"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}

execute if data storage unknown_pack_name:temp pot_data{pot_type:"small"} run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"unknown_pack_name:pottery/pot_type_small"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}

execute if data storage unknown_pack_name:temp pot_data{pot_type:"square"} run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"unknown_pack_name:pottery/pot_type_square"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}

execute if data storage unknown_pack_name:temp pot_data{pot_type:"thin"} run function unknown_pack_name:core/block/placed/pot/spawn_panels_thin
execute if data storage unknown_pack_name:temp pot_data{pot_type:"slab"} run function unknown_pack_name:core/block/placed/pot/spawn_panels_slab
execute if data storage unknown_pack_name:temp pot_data{pot_type:"small"} run function unknown_pack_name:core/block/placed/pot/spawn_panels_small
execute if data storage unknown_pack_name:temp pot_data{pot_type:"square"} run function unknown_pack_name:core/block/placed/pot/spawn_panels_square

summon interaction ~ ~-0.5 ~ {width:1.05f,height:0.9f,Tags:["pot_interaction","needs_id"],data:{stored_item:{}}}

execute as @e[tag=needs_id,distance=..1] run scoreboard players operation @s pot_id = #next_pot_id temp
execute as @e[tag=needs_id,distance=..1] if data storage unknown_pack_name:temp pot_data.storage_pot run scoreboard players operation @s storage_pot_id = #next_storage_id temp
execute as @e[tag=needs_id,distance=..1] run tag @s remove needs_id

execute as @e[tag=pot_interaction,distance=..1,limit=1] run data modify entity @s data.stored_item set from storage unknown_pack_name:temp original_item_data

execute if data storage unknown_pack_name:temp pot_data.storage_pot run function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/init_storage