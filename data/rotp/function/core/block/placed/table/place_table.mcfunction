execute if block ~ ~ ~ loom[facing=south] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=south]
execute if block ~ ~ ~ loom[facing=north] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=north]
execute if block ~ ~ ~ loom[facing=east] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=east]
execute if block ~ ~ ~ loom[facing=west] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=west]

execute store result score #next_table_id temp run random value 1000..9999999

execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,distance=..1,tag=table] run summon marker ~ ~ ~ {Tags:["table","needs_id"]}

execute if block ~ ~ ~ barrel[facing=east] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=item_display,distance=..0.4,tag=research_workbench_display] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/research_workbench"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["research_workbench_display","needs_id"]}

execute if block ~ ~ ~ barrel[facing=west] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=item_display,distance=..0.4,tag=research_workbench_display] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/research_workbench"}},transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["research_workbench_display","needs_id"]}

execute if block ~ ~ ~ barrel[facing=north] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=item_display,distance=..0.4,tag=research_workbench_display] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/research_workbench"}},transformation:{left_rotation:[0f,0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["research_workbench_display","needs_id"]}

execute if block ~ ~ ~ barrel[facing=south] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=item_display,distance=..0.4,tag=research_workbench_display] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/research_workbench"}},transformation:{left_rotation:[0f,-0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["research_workbench_display","needs_id"]}

execute as @e[tag=needs_id,distance=..2] run scoreboard players operation @s table_id = #next_table_id temp
execute as @e[tag=needs_id,distance=..2] run tag @s remove needs_id

scoreboard players reset #next_table_id temp