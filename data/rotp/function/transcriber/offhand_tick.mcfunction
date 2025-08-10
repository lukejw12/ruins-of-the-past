execute store result score #stored_points temp run data get entity @s equipment.offhand.components."minecraft:custom_data".stored_points

execute if score #stored_points temp matches 80000.. run function rotp:transcriber/push_orbs_away_offhand
execute if score #stored_points temp matches ..79999 as @e[type=experience_orb,distance=..5] run function rotp:transcriber/pull_orb_towards_offhand

execute if score #stored_points temp matches ..79999 as @e[type=experience_orb,distance=..2.5] run function rotp:transcriber/consume_orb_offhand

scoreboard players reset #stored_points temp
