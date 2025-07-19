execute if block ~ ~ ~ smoker[facing=south] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=south]
execute if block ~ ~ ~ smoker[facing=north] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=north]
execute if block ~ ~ ~ smoker[facing=east] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=east]
execute if block ~ ~ ~ smoker[facing=west] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=west]

execute store result score #next_pottery_wheel_id temp run random value 1000..9999999

execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,distance=..0.5,tag=pottery_wheel] run summon marker ~ ~ ~ {Tags:["pottery_wheel","needs_id"]}

execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=item_display,distance=..0.4,tag=pottery_wheel_display] run summon item_display ~ ~ ~ {item:{id:"barrier",components:{item_model:"rotp:blocks/placed/pottery_wheel/pottery_wheel_0"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness:{sky:15,block:0},Tags:["pottery_wheel_display","needs_id"]}

execute as @e[tag=needs_id,distance=..1.5] run scoreboard players operation @s pottery_wheel_id = #next_pottery_wheel_id temp
execute as @e[tag=needs_id,distance=..1.5] run tag @s remove needs_id

#execute as @e[type=item_display,tag=pottery_wheel_display,distance=..1] run scoreboard players set @s animation_timer 0

scoreboard players reset #next_pottery_wheel_id temp