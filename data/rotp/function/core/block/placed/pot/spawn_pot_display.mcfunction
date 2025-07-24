execute store result score #next_pot_id temp run random value 1000..9999999
execute store result score #next_storage_id temp run random value 10000..9999999
execute store result score #player_rotation temp run data get entity @s Rotation[0]

execute if score #player_rotation temp matches -45..45 run scoreboard players set #player_rotation temp 0
execute if score #player_rotation temp matches 46..135 run scoreboard players set #player_rotation temp 1
execute if score #player_rotation temp matches 136..180 run scoreboard players set #player_rotation temp 2
execute if score #player_rotation temp matches -180..-136 run scoreboard players set #player_rotation temp 2
execute if score #player_rotation temp matches -135..-46 run scoreboard players set #player_rotation temp 3

data modify storage rotp:temp original_item_data set from entity @s SelectedItem
data modify storage rotp:temp original_item_data.count set value 1
data modify storage rotp:temp pot_data set from storage rotp:temp original_item_data.components."minecraft:custom_data"

execute if score #player_rotation temp matches 0 run function rotp:core/block/placed/pot/rotate_materials_0
execute if score #player_rotation temp matches 1 run function rotp:core/block/placed/pot/rotate_materials_1
execute if score #player_rotation temp matches 2 run function rotp:core/block/placed/pot/rotate_materials_2
execute if score #player_rotation temp matches 3 run function rotp:core/block/placed/pot/rotate_materials_3

setblock ~ ~ ~ barrier

execute if data storage rotp:temp pot_data{pot_type:"thin"} unless data storage rotp:temp pot_data.dyed run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:pottery/pot_type_thin"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}
execute if data storage rotp:temp pot_data{pot_type:"thin"} if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pot_thin

execute if data storage rotp:temp pot_data{pot_type:"slab"} unless data storage rotp:temp pot_data.dyed run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:pottery/pot_type_slab"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}
execute if data storage rotp:temp pot_data{pot_type:"slab"} if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pot_slab

execute if data storage rotp:temp pot_data{pot_type:"small"} unless data storage rotp:temp pot_data.dyed run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:pottery/pot_type_small"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}
execute if data storage rotp:temp pot_data{pot_type:"small"} if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pot_small

execute if data storage rotp:temp pot_data{pot_type:"square"} unless data storage rotp:temp pot_data.dyed run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:pottery/pot_type_square"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}
execute if data storage rotp:temp pot_data{pot_type:"square"} if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pot_square
execute if data storage rotp:temp pot_data{pot_type:"large"} unless data storage rotp:temp pot_data.dyed run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:pottery/pot_type_large"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}
execute if data storage rotp:temp pot_data{pot_type:"large"} if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pot_large

execute if data storage rotp:temp pot_data{pot_type:"vase"} unless data storage rotp:temp pot_data.dyed run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:pottery/pot_type_vase"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}
execute if data storage rotp:temp pot_data{pot_type:"vase"} if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pot_vase
execute if data storage rotp:temp pot_data{pot_type:"thin"} run function rotp:core/block/placed/pot/spawn_panels_thin
execute if data storage rotp:temp pot_data{pot_type:"slab"} run function rotp:core/block/placed/pot/spawn_panels_slab
execute if data storage rotp:temp pot_data{pot_type:"small"} run function rotp:core/block/placed/pot/spawn_panels_small
execute if data storage rotp:temp pot_data{pot_type:"square"} run function rotp:core/block/placed/pot/spawn_panels_square
execute if data storage rotp:temp pot_data{pot_type:"large"} run function rotp:core/block/placed/pot/spawn_panels_large
execute if data storage rotp:temp pot_data{pot_type:"vase"} run function rotp:core/block/placed/pot/spawn_panels_vase
summon interaction ~ ~-0.5 ~ {width:1.05f,height:0.95f,Tags:["pot_interaction","needs_id"],data:{stored_item:{}}}

execute as @e[tag=needs_id,distance=..1] run scoreboard players operation @s pot_id = #next_pot_id temp
execute as @e[tag=needs_id,distance=..1] if data storage rotp:temp pot_data.storage_pot run scoreboard players operation @s storage_pot_id = #next_storage_id temp

execute as @e[tag=pot_interaction,distance=..1,limit=1,tag=needs_id] run data modify entity @s data.stored_item set from storage rotp:temp original_item_data
execute as @e[tag=needs_id,distance=..2] run tag @s remove needs_id

execute if data storage rotp:temp pot_data.storage_pot run function rotp:core/block/placed/pot/storage_pot/small_storage/init_storage
execute if data storage rotp:temp pot_data.linked_storage run function rotp:core/block/placed/pot/linked_storage/init_storage
scoreboard players reset #player_rotation temp