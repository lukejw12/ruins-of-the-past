execute store result score #player_count temp run data get storage rotp:temp player_item.count
scoreboard players set #max_capacity temp 64

scoreboard players operation #to_store temp = #player_count temp
execute if score #to_store temp > #max_capacity temp run scoreboard players operation #to_store temp = #max_capacity temp

data modify storage rotp:temp stored_item_data set from storage rotp:temp player_item
data modify storage rotp:temp stored_item_data.count set value 1
execute store result storage rotp:temp new_count int 1 run scoreboard players get #to_store temp
function rotp:core/block/placed/pot/linked_storage/set_storage with storage rotp:temp

scoreboard players operation #player_count temp -= #to_store temp
execute if score #player_count temp matches 1.. run function rotp:core/block/placed/pot/linked_storage/update_player_count
execute if score #player_count temp matches 0 run item replace entity @p[distance=..10] weapon.mainhand with air

particle dust_plume ~ ~1 ~ 0 0.6 0 0.07 3

scoreboard players reset #player_count temp
scoreboard players reset #to_store temp
scoreboard players reset #max_capacity temp