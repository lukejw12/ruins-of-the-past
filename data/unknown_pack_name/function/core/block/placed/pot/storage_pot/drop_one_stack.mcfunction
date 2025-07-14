scoreboard players operation #this_stack_size temp = #stored_count temp
execute if score #this_stack_size temp > #max_stack_size temp run scoreboard players operation #this_stack_size temp = #max_stack_size temp
execute store result storage unknown_pack_name:temp spawn_count int 1 run scoreboard players get #this_stack_size temp
function unknown_pack_name:core/block/placed/pot/storage_pot/spawn_with_count with storage unknown_pack_name:temp
scoreboard players operation #stored_count temp -= #this_stack_size temp
summon marker ~ ~ ~ {Tags:["temp_pos"]}
execute as @e[tag=temp_pos,limit=1] run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=temp_pos,limit=1] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=temp_pos,limit=1] positioned ~ ~0.2 ~ run function unknown_pack_name:core/block/placed/pot/storage_pot/place_stack_here
kill @e[tag=temp_pos]
execute if score #stored_count temp matches 1.. run function unknown_pack_name:core/block/placed/pot/storage_pot/drop_one_stack
scoreboard players reset #this_stack_size temp