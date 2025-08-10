execute store result score #dx temp run data get entity @e[tag=pedestal_interaction,limit=1,sort=nearest] Pos[0] 1000
execute store result score #dy temp run data get entity @e[tag=pedestal_interaction,limit=1,sort=nearest] Pos[1] 1000
execute store result score #dz temp run data get entity @e[tag=pedestal_interaction,limit=1,sort=nearest] Pos[2] 1000

execute store result score #ox temp run data get entity @s Pos[0] 1000
execute store result score #oy temp run data get entity @s Pos[1] 1000
execute store result score #oz temp run data get entity @s Pos[2] 1000

scoreboard players operation #dx temp -= #ox temp
scoreboard players operation #dy temp -= #oy temp
scoreboard players operation #dz temp -= #oz temp

scoreboard players set #speed temp 50
scoreboard players operation #dx temp *= #speed temp
scoreboard players operation #dy temp *= #speed temp
scoreboard players operation #dz temp *= #speed temp

execute store result entity @s Motion[0] double 0.000001 run scoreboard players get #dx temp
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get #dy temp
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get #dz temp

scoreboard players reset #dx temp
scoreboard players reset #dy temp
scoreboard players reset #dz temp
scoreboard players reset #ox temp
scoreboard players reset #oy temp
scoreboard players reset #oz temp
scoreboard players reset #speed temp