execute store result score #orb_value temp run data get entity @s Value

tellraw @a[distance=..5] [{"text":"Found orb with value: ","color":"yellow"},{"score":{"name":"#orb_value","objective":"temp"},"color":"white"}]

execute as @e[tag=pedestal_interaction,limit=1,sort=nearest] run function rotp:transcriber/add_points_to_transcriber

particle happy_villager ~ ~ ~ 0.1 0.1 0.1 0.1 3
playsound entity.experience_orb.pickup block @a[distance=..8] ~ ~ ~ 0.5 1.2

kill @s

scoreboard players reset #orb_value temp