
execute if block ~ ~ ~ end_portal_frame[facing=south] align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/rune_stone"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["runestone_display","needs_id"]}

execute if block ~ ~ ~ end_portal_frame[facing=north] align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/rune_stone"}},transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["runestone_display","needs_id"]}

execute if block ~ ~ ~ end_portal_frame[facing=east] align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/rune_stone"}},transformation:{left_rotation:[0f,0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["runestone_display","needs_id"]}

execute if block ~ ~ ~ end_portal_frame[facing=west] align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/rune_stone"}},transformation:{left_rotation:[0f,-0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["runestone_display","needs_id"]}
setblock ~ ~ ~ smooth_stone


execute store result score #next_runestone_id temp run random value 1000..9999999

execute as @e[tag=needs_id,distance=..1.5] run scoreboard players operation @s runestone_id = #next_runestone_id temp
execute as @e[tag=needs_id,distance=..1.5] run tag @s remove needs_id

scoreboard players reset #next_runestone_id temp