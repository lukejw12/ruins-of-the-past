scoreboard players operation #extra_pots temp = #player_pot_count temp
scoreboard players remove #extra_pots temp 1

execute at @p[distance=..10] run summon item ~ ~ ~ {Item:{id:"barrier",count:1},PickupDelay:0,Motion:[0.0,0.1,0.0]}
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run data modify entity @s Item set from storage rotp:temp player_pot_data
execute as @e[type=item,distance=..1,limit=1,sort=nearest] store result entity @s Item.count int 1 run scoreboard players get #extra_pots temp

item replace entity @p[distance=..10] weapon.mainhand with air

scoreboard players reset #extra_pots temp