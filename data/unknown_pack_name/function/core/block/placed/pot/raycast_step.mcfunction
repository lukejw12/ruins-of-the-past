data modify storage unknown_pack_name:temp pot_data set from entity @p[distance=..10,limit=1] SelectedItem.components."minecraft:custom_data"

#item modify entity @p[distance=..10,limit=1] weapon.mainhand {function:set_count,count:-1,add:true}
execute if block ~ ~ ~ barrier align xyz positioned ~0.5 ~0.5 ~0.5 run function unknown_pack_name:core/block/placed/pot/spawn_pot_display
execute if block ~ ~ ~ barrier run return 0
execute unless block ~ ~ ~ barrier run function unknown_pack_name:core/block/placed/table/check_cube
execute unless block ~ ~ ~ barrier if score #steps temp matches 1.. run scoreboard players remove #steps temp 1
execute unless block ~ ~ ~ barrier if score #steps temp matches 1.. positioned ^ ^ ^0.2 run function unknown_pack_name:core/block/placed/pot/raycast_step
execute if score #steps temp matches 0 run function unknown_pack_name:core/block/placed/table/raycast_end
