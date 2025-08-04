execute if block ~ ~ ~ blast_furnace[facing=south] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=south]
execute if block ~ ~ ~ blast_furnace[facing=north] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=north]
execute if block ~ ~ ~ blast_furnace[facing=east] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=east]
execute if block ~ ~ ~ blast_furnace[facing=west] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=west]

execute store result score #next_altar_id temp run random value 1000..9999999

execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,distance=..0.8,tag=rune_table] run summon marker ~ ~ ~ {Tags:["rune_table","needs_id"]}

execute if block ~ ~ ~ barrel[facing=south] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=item_display,distance=..0.4,tag=runic_altar_display] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/runic_alter"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["runic_altar_display","needs_id"]}

execute if block ~ ~ ~ barrel[facing=north] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=item_display,distance=..0.4,tag=runic_altar_display] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/runic_alter"}},transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["runic_altar_display","needs_id"]}

execute if block ~ ~ ~ barrel[facing=east] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=item_display,distance=..0.4,tag=runic_altar_display] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/runic_alter"}},transformation:{left_rotation:[0f,0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["runic_altar_display","needs_id"]}

execute if block ~ ~ ~ barrel[facing=west] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=item_display,distance=..0.4,tag=runic_altar_display] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/runic_alter"}},transformation:{left_rotation:[0f,-0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["runic_altar_display","needs_id"]}

execute as @e[tag=needs_id,distance=..1.5] run scoreboard players operation @s altar_id = #next_altar_id temp
execute as @e[tag=needs_id,distance=..1.5] run tag @s remove needs_id

scoreboard players reset #next_altar_id temp