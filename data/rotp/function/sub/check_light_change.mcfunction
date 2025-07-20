scoreboard players set #current_light temp 0
execute positioned ~-1 ~ ~-1 if predicate rotp:light/level_13_15 run scoreboard players set #current_light temp 4
execute positioned ~-1 ~ ~ if predicate rotp:light/level_13_15 run scoreboard players set #current_light temp 4
execute positioned ~-1 ~ ~1 if predicate rotp:light/level_13_15 run scoreboard players set #current_light temp 4
execute positioned ~ ~ ~-1 if predicate rotp:light/level_13_15 run scoreboard players set #current_light temp 4
execute positioned ~ ~ ~ if predicate rotp:light/level_13_15 run scoreboard players set #current_light temp 4
execute positioned ~ ~ ~1 if predicate rotp:light/level_13_15 run scoreboard players set #current_light temp 4
execute positioned ~1 ~ ~-1 if predicate rotp:light/level_13_15 run scoreboard players set #current_light temp 4
execute positioned ~1 ~ ~ if predicate rotp:light/level_13_15 run scoreboard players set #current_light temp 4
execute positioned ~1 ~ ~1 if predicate rotp:light/level_13_15 run scoreboard players set #current_light temp 4

execute unless score #current_light temp matches 4 positioned ~-1 ~ ~-1 if predicate rotp:light/level_10_12 run scoreboard players set #current_light temp 3
execute unless score #current_light temp matches 4 positioned ~-1 ~ ~ if predicate rotp:light/level_10_12 run scoreboard players set #current_light temp 3
execute unless score #current_light temp matches 4 positioned ~-1 ~ ~1 if predicate rotp:light/level_10_12 run scoreboard players set #current_light temp 3
execute unless score #current_light temp matches 4 positioned ~ ~ ~-1 if predicate rotp:light/level_10_12 run scoreboard players set #current_light temp 3
execute unless score #current_light temp matches 4 positioned ~ ~ ~ if predicate rotp:light/level_10_12 run scoreboard players set #current_light temp 3
execute unless score #current_light temp matches 4 positioned ~ ~ ~1 if predicate rotp:light/level_10_12 run scoreboard players set #current_light temp 3
execute unless score #current_light temp matches 4 positioned ~1 ~ ~-1 if predicate rotp:light/level_10_12 run scoreboard players set #current_light temp 3
execute unless score #current_light temp matches 4 positioned ~1 ~ ~ if predicate rotp:light/level_10_12 run scoreboard players set #current_light temp 3
execute unless score #current_light temp matches 4 positioned ~1 ~ ~1 if predicate rotp:light/level_10_12 run scoreboard players set #current_light temp 3

execute unless score #current_light temp matches 3..4 positioned ~-1 ~ ~-1 if predicate rotp:light/level_5_9 run scoreboard players set #current_light temp 2
execute unless score #current_light temp matches 3..4 positioned ~-1 ~ ~ if predicate rotp:light/level_5_9 run scoreboard players set #current_light temp 2
execute unless score #current_light temp matches 3..4 positioned ~-1 ~ ~1 if predicate rotp:light/level_5_9 run scoreboard players set #current_light temp 2
execute unless score #current_light temp matches 3..4 positioned ~ ~ ~-1 if predicate rotp:light/level_5_9 run scoreboard players set #current_light temp 2
execute unless score #current_light temp matches 3..4 positioned ~ ~ ~ if predicate rotp:light/level_5_9 run scoreboard players set #current_light temp 2
execute unless score #current_light temp matches 3..4 positioned ~ ~ ~1 if predicate rotp:light/level_5_9 run scoreboard players set #current_light temp 2
execute unless score #current_light temp matches 3..4 positioned ~1 ~ ~-1 if predicate rotp:light/level_5_9 run scoreboard players set #current_light temp 2
execute unless score #current_light temp matches 3..4 positioned ~1 ~ ~ if predicate rotp:light/level_5_9 run scoreboard players set #current_light temp 2
execute unless score #current_light temp matches 3..4 positioned ~1 ~ ~1 if predicate rotp:light/level_5_9 run scoreboard players set #current_light temp 2

execute unless score #current_light temp matches 2..4 positioned ~-1 ~ ~-1 if predicate rotp:light/level_1_4 run scoreboard players set #current_light temp 1
execute unless score #current_light temp matches 2..4 positioned ~-1 ~ ~ if predicate rotp:light/level_1_4 run scoreboard players set #current_light temp 1
execute unless score #current_light temp matches 2..4 positioned ~-1 ~ ~1 if predicate rotp:light/level_1_4 run scoreboard players set #current_light temp 1
execute unless score #current_light temp matches 2..4 positioned ~ ~ ~-1 if predicate rotp:light/level_1_4 run scoreboard players set #current_light temp 1
execute unless score #current_light temp matches 2..4 positioned ~ ~ ~ if predicate rotp:light/level_1_4 run scoreboard players set #current_light temp 1
execute unless score #current_light temp matches 2..4 positioned ~ ~ ~1 if predicate rotp:light/level_1_4 run scoreboard players set #current_light temp 1
execute unless score #current_light temp matches 2..4 positioned ~1 ~ ~-1 if predicate rotp:light/level_1_4 run scoreboard players set #current_light temp 1
execute unless score #current_light temp matches 2..4 positioned ~1 ~ ~ if predicate rotp:light/level_1_4 run scoreboard players set #current_light temp 1
execute unless score #current_light temp matches 2..4 positioned ~1 ~ ~1 if predicate rotp:light/level_1_4 run scoreboard players set #current_light temp 1

execute unless score #current_light temp = @s previous_light run function rotp:sub/update_brightness_level

scoreboard players operation @s previous_light = #current_light temp
scoreboard players reset #current_light temp