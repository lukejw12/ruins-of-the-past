execute store result score #px temp run data get entity @e[tag=pedestal_interaction,limit=1,sort=nearest] Pos[0] 1000
execute store result score #py temp run data get entity @e[tag=pedestal_interaction,limit=1,sort=nearest] Pos[1] 1000
execute store result score #pz temp run data get entity @e[tag=pedestal_interaction,limit=1,sort=nearest] Pos[2] 1000

execute store result score #ox temp run data get entity @s Pos[0] 1000
execute store result score #oy temp run data get entity @s Pos[1] 1000
execute store result score #oz temp run data get entity @s Pos[2] 1000

scoreboard players operation #dx temp = #ox temp
scoreboard players operation #dy temp = #oy temp
scoreboard players operation #dz temp = #oz temp

scoreboard players operation #dx temp -= #px temp
scoreboard players operation #dy temp -= #py temp
scoreboard players operation #dz temp -= #pz temp

scoreboard players set #push_strength temp 80
scoreboard players operation #dx temp *= #push_strength temp
scoreboard players operation #dy temp *= #push_strength temp
scoreboard players operation #dz temp *= #push_strength temp

execute store result entity @s Motion[0] double 0.000001 run scoreboard players get #dx temp
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get #dy temp
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get #dz temp

scoreboard players reset #px temp
scoreboard players reset #py temp
scoreboard players reset #pz temp
scoreboard players reset #ox temp
scoreboard players reset #oy temp
scoreboard players reset #oz temp
scoreboard players reset #dx temp
scoreboard players reset #dy temp
scoreboard players reset #dz temp
scoreboard players reset #push_strength temp