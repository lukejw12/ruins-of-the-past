execute unless entity @s[tag=has_vampiric_weapon] run return 0

execute store result score #heal_chance temp run random value 1..100
execute if score #heal_chance temp matches 1..9 run effect give @s instant_health 1 0

advancement revoke @s only unknown_pack_name:rune_effects/vampiric_hit

scoreboard players reset #heal_chance temp
