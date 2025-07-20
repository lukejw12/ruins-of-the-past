scoreboard players add #lighting_timer temp 1
execute unless score #lighting_timer temp matches 5.. run return 0
scoreboard players reset #lighting_timer temp

execute as @a[scores={dynamic_lighting=1}] at @s run function rotp:sub/update_nearby_displays
execute as @a[scores={dynamic_lighting=2..}] at @s run scoreboard players set @s dynamic_lighting 0