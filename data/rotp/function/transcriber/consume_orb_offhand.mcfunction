execute store result score #orb_value temp run data get entity @s Value

execute as @p[distance=..2] run function rotp:transcriber/add_points_to_offhand_transcriber

particle happy_villager ~ ~ ~ 0.1 0.1 0.1 0.1 3
playsound entity.experience_orb.pickup block @a[distance=..8] ~ ~ ~ 0.5 1.2

kill @s

scoreboard players reset #orb_value temp