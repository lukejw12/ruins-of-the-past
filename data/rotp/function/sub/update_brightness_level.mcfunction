execute if score #current_light temp matches 0 run data modify entity @s brightness.block set value 0
execute if score #current_light temp matches 1 run data modify entity @s brightness.block set value 3
execute if score #current_light temp matches 2 run data modify entity @s brightness.block set value 6
execute if score #current_light temp matches 3 run data modify entity @s brightness.block set value 10
execute if score #current_light temp matches 4 run data modify entity @s brightness.block set value 15

data modify entity @s brightness.sky set value 10