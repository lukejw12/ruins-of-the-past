data modify storage rotp:temp item_check set from storage rotp:temp player_item.id
execute store success score #different_item temp run data modify storage rotp:temp item_check set from storage rotp:temp current_item_type
execute if score #different_item temp matches 1 run return 0
data modify storage rotp:temp item_data_check set from storage rotp:temp player_item
data modify storage rotp:temp item_data_check.count set value 1
function rotp:core/block/placed/pot/storage_pot/small_storage/get_stored_item_data with storage rotp:temp
execute store success score #different_data temp run data modify storage rotp:temp item_data_check set from storage rotp:temp stored_item_data
execute if score #different_data temp matches 1 run return 0
execute store result score #max_capacity temp run data get entity @s data.stored_item.components."minecraft:custom_data".max_capacity
scoreboard players operation #available_space temp = #max_capacity temp
scoreboard players operation #available_space temp -= #stored_count temp
execute if score #available_space temp matches 0 run particle smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.05 10
execute if score #available_space temp matches 0 run return 0
execute store result score #player_count temp run data get storage rotp:temp player_item.count
scoreboard players operation #to_store temp = #player_count temp
execute if score #to_store temp > #available_space temp run scoreboard players operation #to_store temp = #available_space temp
scoreboard players operation #new_count temp = #stored_count temp
scoreboard players operation #new_count temp += #to_store temp
execute store result storage rotp:temp new_count int 1 run scoreboard players get #new_count temp
function rotp:core/block/placed/pot/storage_pot/small_storage/update_count with storage rotp:temp
scoreboard players operation #player_count temp -= #to_store temp
execute if score #player_count temp matches 1.. run function rotp:core/block/placed/pot/storage_pot/small_storage/update_player_count
execute if score #player_count temp matches 0 run item replace entity @p[distance=..10,tag=current_player] weapon.mainhand with air
particle dust_plume ~ ~1 ~ 0 0.6 0 0.07 3
scoreboard players reset #different_item temp
scoreboard players reset #different_data temp
scoreboard players reset #available_space temp
scoreboard players reset #player_count temp
scoreboard players reset #to_store temp
scoreboard players reset #new_count temp
scoreboard players reset #max_capacity temp