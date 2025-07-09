data modify storage unknown_pack_name:puzzle_game puzzle_active set value 0b
tellraw @p[distance=..10] [{"text":"Puzzle Complete!","color":"green","bold":true}]
execute store result score #random temp run random value 1..15
execute if score #random temp matches 1 run data modify storage unknown_pack_name:discovery subtype set value "amulet_of_strength"
execute if score #random temp matches 2 run data modify storage unknown_pack_name:discovery subtype set value "ring_of_fortune"
execute if score #random temp matches 3 run data modify storage unknown_pack_name:discovery subtype set value "pendant_of_wisdom"
execute if score #random temp matches 4 run data modify storage unknown_pack_name:discovery subtype set value "bracelet_of_dexterity"
execute if score #random temp matches 5 run data modify storage unknown_pack_name:discovery subtype set value "circlet_of_focus"
execute if score #random temp matches 6 run data modify storage unknown_pack_name:discovery subtype set value "talisman_of_warding"
execute if score #random temp matches 7 run data modify storage unknown_pack_name:discovery subtype set value "medallion_of_valor"
execute if score #random temp matches 8 run data modify storage unknown_pack_name:discovery subtype set value "charm_of_prosperity"
execute if score #random temp matches 9 run data modify storage unknown_pack_name:discovery subtype set value "sigil_of_protection"
execute if score #random temp matches 10 run data modify storage unknown_pack_name:discovery subtype set value "totem_of_resilience"
execute if score #random temp matches 11 run data modify storage unknown_pack_name:discovery subtype set value "emblem_of_power"
execute if score #random temp matches 12 run data modify storage unknown_pack_name:discovery subtype set value "relic_of_ancient_kings"
execute if score #random temp matches 13 run data modify storage unknown_pack_name:discovery subtype set value "shard_of_eternal_light"
execute if score #random temp matches 14 run data modify storage unknown_pack_name:discovery subtype set value "crystal_of_pure_energy"
execute if score #random temp matches 15 run data modify storage unknown_pack_name:discovery subtype set value "orb_of_mystical_forces"
scoreboard players reset #random temp
scoreboard players set @s level3_delay 60
