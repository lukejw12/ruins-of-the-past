execute unless entity @s[tag=has_thunderous_weapon] run return 0
execute store result score #lightning_chance temp run random value 1..100
execute if score #lightning_chance temp matches 1..10 as @e[distance=..10,nbt={HurtTime:10s},sort=nearest] at @s run summon lightning_bolt ~ ~ ~
execute store result score #self_strike_chance temp run random value 1..100
execute if score #self_strike_chance temp matches 1..2 run summon lightning_bolt ~ ~ ~
advancement revoke @s only unknown_pack_name:rune_effects/thunderous_hit

scoreboard players reset #lightning_chance temp
scoreboard players reset #self_strike_chance temp
