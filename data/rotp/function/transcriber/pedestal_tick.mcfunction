
execute store result score #stored_points temp run data get entity @s data.stored_item.components."minecraft:custom_data".stored_points

execute if score #stored_points temp matches 80000.. run function rotp:transcriber/push_orbs_away
execute if score #stored_points temp matches ..79999 as @e[type=experience_orb,distance=..10] run function rotp:transcriber/pull_orb_towards_pedestal

execute if score #stored_points temp matches ..79999 as @e[type=experience_orb,distance=..2] run function rotp:transcriber/consume_orb

scoreboard players reset #stored_points temp