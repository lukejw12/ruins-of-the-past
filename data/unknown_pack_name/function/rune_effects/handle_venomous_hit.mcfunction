execute unless entity @s[tag=has_venomous_weapon] run return 0

execute as @e[distance=..10,nbt={HurtTime:10s},sort=nearest] run effect give @s poison 3 0
advancement revoke @s only unknown_pack_name:rune_effects/venomous_hit
