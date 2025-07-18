scoreboard players set #found_target temp 0

execute if block ~0.1 ~ ~ barrier positioned ~0.1 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pot/spawn_pot_display
execute if block ~0.1 ~ ~ barrier run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~-0.1 ~ ~ barrier positioned ~-0.1 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pot/spawn_pot_display
execute if block ~-0.1 ~ ~ barrier run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~ ~0.1 ~ barrier positioned ~ ~0.1 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pot/spawn_pot_display
execute if block ~ ~0.1 ~ barrier run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~ ~-0.1 ~ barrier positioned ~ ~-0.1 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pot/spawn_pot_display
execute if block ~ ~-0.1 ~ barrier run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~ ~ ~0.1 barrier positioned ~ ~ ~0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pot/spawn_pot_display
execute if block ~ ~ ~0.1 barrier run scoreboard players set #found_target temp 1
execute if score #found_target temp matches 1 run return 0

execute if block ~ ~ ~-0.1 barrier positioned ~ ~ ~-0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run function rotp:core/block/placed/pot/spawn_pot_display
execute if block ~ ~ ~-0.1 barrier run scoreboard players set #found_target temp 1