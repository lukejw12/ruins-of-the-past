execute store result score #random temp run random value 1..6

execute if score #random temp matches 1 run data modify storage unknown_pack_name:discovery subtype set value "desert_ruins"
execute if score #random temp matches 2 run data modify storage unknown_pack_name:discovery subtype set value "oasis_temple"
execute if score #random temp matches 3 run data modify storage unknown_pack_name:discovery subtype set value "ancient_tomb"
execute if score #random temp matches 4 run data modify storage unknown_pack_name:discovery subtype set value "buried_city"
execute if score #random temp matches 5 run data modify storage unknown_pack_name:discovery subtype set value "forgotten_shrine"
execute if score #random temp matches 6 run data modify storage unknown_pack_name:discovery subtype set value "lost_pyramid"

scoreboard players reset #random temp