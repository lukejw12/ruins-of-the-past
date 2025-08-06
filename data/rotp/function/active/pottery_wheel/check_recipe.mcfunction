scoreboard players set #south_filled temp 0
scoreboard players set #north_filled temp 0
scoreboard players set #west_filled temp 0
scoreboard players set #east_filled temp 0

execute if items block ~ ~ ~ container.1 #rotp:pottery_materials run scoreboard players set #south_filled temp 1
execute if items block ~ ~ ~ container.19 #rotp:pottery_materials run scoreboard players set #north_filled temp 1
execute if items block ~ ~ ~ container.11 #rotp:pottery_materials run scoreboard players set #west_filled temp 1
execute if items block ~ ~ ~ container.9 #rotp:pottery_materials run scoreboard players set #east_filled temp 1

execute if score #south_filled temp matches 1 if score #north_filled temp matches 1 if score #west_filled temp matches 1 if score #east_filled temp matches 1 if items block ~ ~ ~ container.10 tnt run function rotp:core/block/placed/pot/trapped_pot/show_result
execute if score #south_filled temp matches 1 if score #north_filled temp matches 1 if score #west_filled temp matches 1 if score #east_filled temp matches 1 if items block ~ ~ ~ container.10 bundle[custom_data~{reinforced_bundle:true}] unless items block ~ ~ ~ container.10 tnt run function rotp:core/block/placed/pot/storage_pot/large_storage/show_result
execute if score #south_filled temp matches 1 if score #north_filled temp matches 1 if score #west_filled temp matches 1 if score #east_filled temp matches 1 if items block ~ ~ ~ container.10 bundle unless items block ~ ~ ~ container.10 bundle[custom_data~{reinforced_bundle:true}] unless items block ~ ~ ~ container.10 tnt run function rotp:core/block/placed/pot/storage_pot/small_storage/show_result
execute if score #south_filled temp matches 1 if score #north_filled temp matches 1 if score #west_filled temp matches 1 if score #east_filled temp matches 1 if items block ~ ~ ~ container.10 ender_eye unless items block ~ ~ ~ container.10 bundle unless items block ~ ~ ~ container.10 tnt run function rotp:core/block/placed/pot/linked_storage/show_result
execute if score #south_filled temp matches 1 if score #north_filled temp matches 1 if score #west_filled temp matches 1 if score #east_filled temp matches 1 unless items block ~ ~ ~ container.10 bundle unless items block ~ ~ ~ container.10 tnt unless items block ~ ~ ~ container.10 ender_eye run function rotp:active/pottery_wheel/show_custom_pot_result
execute if score #south_filled temp matches 1 if score #north_filled temp matches 1 if score #west_filled temp matches 1 if score #east_filled temp matches 1 if items block ~ ~ ~ container.1 *[custom_data~{carved_pottery_sherd:true}] unless items block ~ ~ ~ container.10 bundle unless items block ~ ~ ~ container.10 tnt unless items block ~ ~ ~ container.10 ender_eye run function rotp:active/pottery_wheel/show_carved_pot_result

execute unless score #south_filled temp matches 1 run function rotp:active/pottery_wheel/clear_results
execute unless score #north_filled temp matches 1 run function rotp:active/pottery_wheel/clear_results
execute unless score #west_filled temp matches 1 run function rotp:active/pottery_wheel/clear_results
execute unless score #east_filled temp matches 1 run function rotp:active/pottery_wheel/clear_results

scoreboard players reset #south_filled temp
scoreboard players reset #north_filled temp
scoreboard players reset #west_filled temp
scoreboard players reset #east_filled temp