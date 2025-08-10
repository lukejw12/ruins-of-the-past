$tellraw @a[distance=..5] [{"text":"Macro received: ","color":"green"},{"text":"$(new_stored_points)","color":"white"}]

$execute as @e[tag=pedestal_interaction,limit=1,sort=nearest] run data modify entity @s data.stored_item.components."minecraft:custom_data".stored_points set value $(new_stored_points)

tellraw @a[distance=..5] {"text":"Value set to pedestal","color":"green"}

execute as @e[tag=pedestal_interaction,limit=1,sort=nearest] run data get entity @s data.stored_item.components."minecraft:custom_data".stored_points

scoreboard players set #max_capacity temp 79095

$execute if $(new_stored_points) > #max_capacity temp run scoreboard players set #stored_points_final temp 79095
$execute unless $(new_stored_points) > #max_capacity temp run scoreboard players set #stored_points_final temp $(new_stored_points)

execute store result storage rotp:temp stored_points int 1 run scoreboard players get #stored_points_final temp

scoreboard players operation #input_points temp = #stored_points_final temp
function rotp:transcriber/conversion/points_to_levels
execute store result storage rotp:temp display_levels int 1 run scoreboard players get #output_levels temp

execute as @e[tag=pedestal_interaction,limit=1,sort=nearest] run data modify entity @s data.stored_item.components."minecraft:lore" set value []
execute as @e[tag=pedestal_interaction,limit=1,sort=nearest] run data modify entity @s data.stored_item.components."minecraft:lore" append value {text:"Experience Points Stored",color:"gray",italic:false}

$execute as @e[tag=pedestal_interaction,limit=1,sort=nearest] run data modify entity @s data.stored_item.components."minecraft:lore" append value {text:"$(stored_points) XP (≈$(display_levels) levels)",color:"green",italic:false}

execute as @e[tag=pedestal_interaction,limit=1,sort=nearest] run data modify entity @s data.stored_item.components."minecraft:lore" append value {text:"Capacity: 79095 XP (150 levels)",color:"dark_gray",italic:false}

scoreboard players operation #current_pedestal_id temp = @e[tag=pedestal_interaction,limit=1,sort=nearest] pedestal_id

execute as @e[tag=pedestal_item_display] if score @s pedestal_id = #current_pedestal_id temp run data modify entity @s item set from entity @e[tag=pedestal_interaction,limit=1,sort=nearest] data.stored_item

scoreboard players reset #stored_points_final temp
scoreboard players reset #max_capacity temp
scoreboard players reset #current_pedestal_id temp