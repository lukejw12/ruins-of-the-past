data modify storage unknown_pack_name:temp item_check set from storage unknown_pack_name:temp player_item.id
execute store success score #different_item temp run data modify storage unknown_pack_name:temp item_check set from storage unknown_pack_name:temp current_item_type
execute if score #different_item temp matches 1 run return 0
data modify storage unknown_pack_name:temp item_data_check set from storage unknown_pack_name:temp player_item
data modify storage unknown_pack_name:temp item_data_check.count set value 1
function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/get_stored_item_data with storage unknown_pack_name:temp
execute store success score #different_data temp run data modify storage unknown_pack_name:temp item_data_check set from storage unknown_pack_name:temp stored_item_data
execute if score #different_data temp matches 1 run return 0
execute store result score #max_capacity temp run data get entity @s data.stored_item.components."minecraft:custom_data".max_capacity
scoreboard players operation #available_space temp = #max_capacity temp
scoreboard players operation #available_space temp -= #stored_count temp
execute if score #available_space temp matches 0 run particle smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.05 10
execute if score #available_space temp matches 0 run return 0
execute store result score #player_count temp run data get storage unknown_pack_name:temp player_item.count
scoreboard players operation #to_store temp = #player_count temp
execute if score #to_store temp > #available_space temp run scoreboard players operation #to_store temp = #available_space temp
scoreboard players operation #new_count temp = #stored_count temp
scoreboard players operation #new_count temp += #to_store temp
execute store result storage unknown_pack_name:temp new_count int 1 run scoreboard players get #new_count temp
function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/update_count with storage unknown_pack_name:temp
scoreboard players operation #player_count temp -= #to_store temp
execute if score #player_count temp matches 1.. run function unknown_pack_name:core/block/placed/pot/storage_pot/small_storage/update_player_count
execute if score #player_count temp matches 0 run item replace entity @p[distance=..10] weapon.mainhand with air
particle dust_plume ~ ~1 ~ 0 0.6 0 0.07 3
scoreboard players reset #different_item temp
scoreboard players reset #different_data temp
scoreboard players reset #available_space temp
scoreboard players reset #player_count temp
scoreboard players reset #to_store temp
scoreboard players reset #new_count temp
scoreboard players reset #max_capacity temp