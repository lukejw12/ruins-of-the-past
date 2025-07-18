execute store result storage rotp:temp storage_id int 1 run scoreboard players get @s storage_pot_id

function rotp:core/block/placed/pot/storage_pot/small_storage/get_storage with storage rotp:temp

execute if score #stored_count temp matches 0 run return 0

scoreboard players set #withdraw_amount temp 16
execute if score #stored_count temp < #withdraw_amount temp run scoreboard players operation #withdraw_amount temp = #stored_count temp

function rotp:core/block/placed/pot/storage_pot/small_storage/get_stored_item_data with storage rotp:temp
execute store result storage rotp:temp stored_item_data.count int 1 run scoreboard players get #withdraw_amount temp

function rotp:core/block/placed/pot/storage_pot/small_storage/spawn_item with storage rotp:temp

scoreboard players operation #stored_count temp -= #withdraw_amount temp
execute store result storage rotp:temp new_count int 1 run scoreboard players get #stored_count temp
function rotp:core/block/placed/pot/storage_pot/small_storage/update_count with storage rotp:temp

execute if score #stored_count temp matches 0 run function rotp:core/block/placed/pot/storage_pot/small_storage/clear_storage with storage rotp:temp

particle dust_plume ~ ~1 ~ 0 0.6 0 0.07 3

scoreboard players reset #withdraw_amount temp