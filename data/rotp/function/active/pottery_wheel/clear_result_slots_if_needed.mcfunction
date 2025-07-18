execute unless score @s recipe_state matches 0.. run scoreboard players set @s recipe_state 0

scoreboard players set #recipe_filled temp 0
execute if items block ~ ~ ~ container.1 #rotp:pottery_materials if items block ~ ~ ~ container.9 #rotp:pottery_materials if items block ~ ~ ~ container.11 #rotp:pottery_materials if items block ~ ~ ~ container.19 #rotp:pottery_materials run scoreboard players set #recipe_filled temp 1


execute if score @s recipe_state matches 1 if score #recipe_filled temp matches 0 run item replace block ~ ~ ~ container.4 with air
execute if score @s recipe_state matches 1 if score #recipe_filled temp matches 0 run item replace block ~ ~ ~ container.5 with air
execute if score @s recipe_state matches 1 if score #recipe_filled temp matches 0 run item replace block ~ ~ ~ container.6 with air
execute if score @s recipe_state matches 1 if score #recipe_filled temp matches 0 run item replace block ~ ~ ~ container.7 with air

scoreboard players operation @s recipe_state = #recipe_filled temp
scoreboard players reset #recipe_filled temp