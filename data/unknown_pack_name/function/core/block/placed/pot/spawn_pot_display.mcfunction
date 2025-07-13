execute store result score #next_pot_id temp run random value 1000..9999

data modify storage unknown_pack_name:temp original_item_data set from entity @p[distance=..10,limit=1] SelectedItem
data modify storage unknown_pack_name:temp original_item_data.count set value 1
data modify storage unknown_pack_name:temp pot_data set from storage unknown_pack_name:temp original_item_data.components."minecraft:custom_data"

setblock ~ ~ ~ structure_void

summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"unknown_pack_name:pottery/pot_type_thin"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["pot_display","pot_base","needs_id"]}

function unknown_pack_name:core/block/placed/pot/spawn_pattern_panel {direction:north,material_key:north_material,rotation:"[0f,1f,0f,0f]"}
function unknown_pack_name:core/block/placed/pot/spawn_pattern_panel {direction:south,material_key:south_material,rotation:"[0f,0f,0f,1f]"}
function unknown_pack_name:core/block/placed/pot/spawn_pattern_panel {direction:east,material_key:east_material,rotation:"[0f,0.707f,0f,0.707f]"}
function unknown_pack_name:core/block/placed/pot/spawn_pattern_panel {direction:west,material_key:west_material,rotation:"[0f,-0.707f,0f,0.707f]"}

summon interaction ~ ~-0.5 ~ {width:0.7f,height:1.0f,Tags:["pot_interaction","needs_id"],data:{stored_item:{}}}

execute as @e[tag=needs_id,distance=..1] run scoreboard players operation @s pot_id = #next_pot_id temp
execute as @e[tag=needs_id,distance=..1] run tag @s remove needs_id

execute as @e[tag=pot_interaction,distance=..1,limit=1] run data modify entity @s data.stored_item set from storage unknown_pack_name:temp original_item_data

#item modify entity @p[distance=..10,limit=1] weapon.mainhand {function:set_count,count:-1,add:true}