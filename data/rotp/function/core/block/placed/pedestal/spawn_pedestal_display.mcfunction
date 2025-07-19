execute store result score #next_pedestal_id temp run random value 1000..999999

setblock ~ ~ ~ barrier
summon marker ~ ~ ~ {Tags:["pedestal_marker","needs_id"]}
summon interaction ~ ~-0.5 ~ {width:1.02f,height:1.02f,Tags:["pedestal_interaction","needs_id"],data:{stored_item:{}}}
execute as @e[tag=needs_id,distance=..1] run scoreboard players operation @s pedestal_id = #next_pedestal_id temp
execute as @e[tag=needs_id,distance=..1] run tag @s remove needs_id

scoreboard players reset #next_pedestal_id temp