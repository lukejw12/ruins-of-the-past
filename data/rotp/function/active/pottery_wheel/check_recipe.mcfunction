
scoreboard players set #south_filled temp 0
scoreboard players set #north_filled temp 0
scoreboard players set #west_filled temp 0
scoreboard players set #east_filled temp 0

execute if items block ~ ~ ~ container.1 #rotp:pottery_materials run scoreboard players set #south_filled temp 1
execute if items block ~ ~ ~ container.19 #rotp:pottery_materials run scoreboard players set #north_filled temp 1
execute if items block ~ ~ ~ container.11 #rotp:pottery_materials run scoreboard players set #west_filled temp 1
execute if items block ~ ~ ~ container.9 #rotp:pottery_materials run scoreboard players set #east_filled temp 1

execute unless score #south_filled temp matches 1 run function rotp:active/pottery_wheel/clear_results
execute unless score #south_filled temp matches 1 run scoreboard players reset @s ingredient_hash
execute unless score #south_filled temp matches 1 run scoreboard players reset #south_filled temp
execute unless score #south_filled temp matches 1 run scoreboard players reset #north_filled temp
execute unless score #south_filled temp matches 1 run scoreboard players reset #west_filled temp
execute unless score #south_filled temp matches 1 run scoreboard players reset #east_filled temp
execute unless score #south_filled temp matches 1 run return 0

execute unless score #north_filled temp matches 1 run function rotp:active/pottery_wheel/clear_results
execute unless score #north_filled temp matches 1 run scoreboard players reset @s ingredient_hash
execute unless score #north_filled temp matches 1 run scoreboard players reset #south_filled temp
execute unless score #north_filled temp matches 1 run scoreboard players reset #north_filled temp
execute unless score #north_filled temp matches 1 run scoreboard players reset #west_filled temp
execute unless score #north_filled temp matches 1 run scoreboard players reset #east_filled temp
execute unless score #north_filled temp matches 1 run return 0

execute unless score #west_filled temp matches 1 run function rotp:active/pottery_wheel/clear_results
execute unless score #west_filled temp matches 1 run scoreboard players reset @s ingredient_hash
execute unless score #west_filled temp matches 1 run scoreboard players reset #south_filled temp
execute unless score #west_filled temp matches 1 run scoreboard players reset #north_filled temp
execute unless score #west_filled temp matches 1 run scoreboard players reset #west_filled temp
execute unless score #west_filled temp matches 1 run scoreboard players reset #east_filled temp
execute unless score #west_filled temp matches 1 run return 0

execute unless score #east_filled temp matches 1 run function rotp:active/pottery_wheel/clear_results
execute unless score #east_filled temp matches 1 run scoreboard players reset @s ingredient_hash
execute unless score #east_filled temp matches 1 run scoreboard players reset #south_filled temp
execute unless score #east_filled temp matches 1 run scoreboard players reset #north_filled temp
execute unless score #east_filled temp matches 1 run scoreboard players reset #west_filled temp
execute unless score #east_filled temp matches 1 run scoreboard players reset #east_filled temp
execute unless score #east_filled temp matches 1 run return 0

execute store result score #current_ingredient_hash temp run function rotp:active/pottery_wheel/calculate_ingredient_hash

execute unless score @s ingredient_hash matches -2147483648.. run scoreboard players set @s ingredient_hash 0
execute if score #current_ingredient_hash temp = @s ingredient_hash run scoreboard players reset #south_filled temp
execute if score #current_ingredient_hash temp = @s ingredient_hash run scoreboard players reset #north_filled temp
execute if score #current_ingredient_hash temp = @s ingredient_hash run scoreboard players reset #west_filled temp
execute if score #current_ingredient_hash temp = @s ingredient_hash run scoreboard players reset #east_filled temp
execute if score #current_ingredient_hash temp = @s ingredient_hash run scoreboard players reset #current_ingredient_hash temp
execute if score #current_ingredient_hash temp = @s ingredient_hash run return 0

scoreboard players operation @s ingredient_hash = #current_ingredient_hash temp

execute if items block ~ ~ ~ container.10 tnt run function rotp:core/block/placed/pot/trapped_pot/show_result
execute if items block ~ ~ ~ container.10 bundle[custom_data~{reinforced_bundle:true}] unless items block ~ ~ ~ container.10 tnt run function rotp:core/block/placed/pot/storage_pot/large_storage/show_result
execute if items block ~ ~ ~ container.10 bundle unless items block ~ ~ ~ container.10 bundle[custom_data~{reinforced_bundle:true}] unless items block ~ ~ ~ container.10 tnt run function rotp:core/block/placed/pot/storage_pot/small_storage/show_result
execute if items block ~ ~ ~ container.10 ender_eye unless items block ~ ~ ~ container.10 bundle unless items block ~ ~ ~ container.10 tnt run function rotp:core/block/placed/pot/linked_storage/show_result
execute unless items block ~ ~ ~ container.10 bundle unless items block ~ ~ ~ container.10 tnt unless items block ~ ~ ~ container.10 ender_eye run function rotp:active/pottery_wheel/show_custom_pot_result
execute if items block ~ ~ ~ container.1 *[custom_data~{carved_pottery_sherd:true}] unless items block ~ ~ ~ container.10 bundle unless items block ~ ~ ~ container.10 tnt unless items block ~ ~ ~ container.10 ender_eye run function rotp:active/pottery_wheel/show_carved_pot_result

scoreboard players reset #south_filled temp
scoreboard players reset #north_filled temp
scoreboard players reset #west_filled temp
scoreboard players reset #east_filled temp
scoreboard players reset #current_ingredient_hash temp