tellraw @s {"text":"Full offhand NBT:","color":"red"}
data get entity @s equipment.offhand.components."minecraft:custom_data"

execute store result score #stored_points temp run data get entity @s equipment.offhand.components."minecraft:custom_data".stored_points

tellraw @s [{"text":"Debug - stored_points score: ","color":"yellow"},{"score":{"name":"#stored_points","objective":"temp"},"color":"white"}]

execute store result storage rotp:temp stored_points int 1 run scoreboard players get #stored_points temp

tellraw @s [{"text":"Debug - storage value: ","color":"green"},{"nbt":"stored_points","storage":"rotp:temp","color":"white"}]

function rotp:transcriber/apply_normal_lore_to_offhand with storage rotp:temp

scoreboard players reset #stored_points temp