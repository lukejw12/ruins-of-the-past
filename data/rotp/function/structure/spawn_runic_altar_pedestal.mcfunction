kill @s
setblock ~ ~ ~ air

execute store result score #next_pedestal_id temp run random value 1..9999999

setblock ~ ~ ~ barrier
summon marker ~ ~ ~ {Tags:["pedestal_marker","needs_id"]}
summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pedestal"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pedestal_display","needs_id"]}
summon interaction ~ ~-0.5 ~ {width:1.02f,height:1.02f,Tags:["pedestal_interaction","needs_id"],data:{stored_item:{}}}

data modify storage rotp:temp runic_altar_item set value {id:"minecraft:furnace",count:1,components:{"minecraft:custom_data":{runic_altar_placable:1b},"minecraft:item_model":"rotp:blocks/handheld/runic_alter","minecraft:item_name":{bold:0b,italic:0b,obfuscated:0b,strikethrough:0b,text:"Runic Altar",underlined:0b},"minecraft:rarity":"rare"}}

execute as @e[tag=pedestal_interaction,distance=..1,limit=1] run data modify entity @s data.stored_item set from storage rotp:temp runic_altar_item

summon item_display ~ ~1.2 ~ {item:{id:"minecraft:furnace",count:1,components:{"minecraft:item_model":"rotp:blocks/handheld/runic_alter"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},Tags:["pedestal_item_display","needs_id"]}
execute as @e[tag=pedestal_item_display,distance=..1,limit=1] run data modify entity @s item set from storage rotp:temp runic_altar_item

execute as @e[tag=needs_id,distance=..2] run scoreboard players operation @s pedestal_id = #next_pedestal_id temp
execute as @e[tag=needs_id,distance=..2] run tag @s remove needs_id

scoreboard players reset #next_pedestal_id temp
