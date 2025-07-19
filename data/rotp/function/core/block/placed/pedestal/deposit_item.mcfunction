execute unless data entity @p[distance=..10] SelectedItem.id run return 0
execute if data entity @s data.stored_item.id run return 0

data modify storage rotp:temp player_item set from entity @p[distance=..10] SelectedItem

data modify entity @s data.stored_item set from storage rotp:temp player_item
data modify entity @s data.stored_item.count set value 1

execute store result score #player_count temp run data get storage rotp:temp player_item.count
scoreboard players remove #player_count temp 1

execute if score #player_count temp matches 1.. run function rotp:core/block/placed/pedestal/update_player_hand
execute if score #player_count temp matches 0 run item replace entity @p[distance=..10] weapon.mainhand with air

function rotp:core/block/placed/pedestal/spawn_floating_item

particle dust_plume ~ ~1 ~ 0.2 0.2 0.2 0.05 5

scoreboard players reset #player_count temp