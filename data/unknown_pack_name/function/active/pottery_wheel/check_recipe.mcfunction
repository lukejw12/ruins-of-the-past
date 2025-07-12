scoreboard players set #north_brick temp 0
scoreboard players set #south_brick temp 0
scoreboard players set #east_brick temp 0
scoreboard players set #west_brick temp 0

execute if items block ~ ~ ~ container.1 brick run scoreboard players set #north_brick temp 1
execute if items block ~ ~ ~ container.9 brick run scoreboard players set #south_brick temp 1
execute if items block ~ ~ ~ container.11 brick run scoreboard players set #east_brick temp 1
execute if items block ~ ~ ~ container.19 brick run scoreboard players set #west_brick temp 1

execute if score #north_brick temp matches 1 if score #south_brick temp matches 1 if score #east_brick temp matches 1 if score #west_brick temp matches 1 run function unknown_pack_name:active/pottery_wheel/show_thin_pot_result

execute unless score #north_brick temp matches 1 run function unknown_pack_name:active/pottery_wheel/clear_results
execute unless score #south_brick temp matches 1 run function unknown_pack_name:active/pottery_wheel/clear_results
execute unless score #east_brick temp matches 1 run function unknown_pack_name:active/pottery_wheel/clear_results
execute unless score #west_brick temp matches 1 run function unknown_pack_name:active/pottery_wheel/clear_results

scoreboard players reset #north_brick temp
scoreboard players reset #south_brick temp
scoreboard players reset #east_brick temp
scoreboard players reset #west_brick temp