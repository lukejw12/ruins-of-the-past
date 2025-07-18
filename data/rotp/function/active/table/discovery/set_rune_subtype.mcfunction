execute store result score #random temp run random value 1..12

execute if score #random temp matches 1 run data modify storage rotp:discovery subtype set value "hearty"
execute if score #random temp matches 2 run data modify storage rotp:discovery subtype set value "venomous"
execute if score #random temp matches 3 run data modify storage rotp:discovery subtype set value "swift"
execute if score #random temp matches 4 run data modify storage rotp:discovery subtype set value "fortified"
execute if score #random temp matches 5 run data modify storage rotp:discovery subtype set value "blazing"
execute if score #random temp matches 6 run data modify storage rotp:discovery subtype set value "shadowy"
execute if score #random temp matches 7 run data modify storage rotp:discovery subtype set value "luminous"
execute if score #random temp matches 8 run data modify storage rotp:discovery subtype set value "thunderous"
execute if score #random temp matches 9 run data modify storage rotp:discovery subtype set value "earthen"
execute if score #random temp matches 10 run data modify storage rotp:discovery subtype set value "aquatic"
execute if score #random temp matches 11 run data modify storage rotp:discovery subtype set value "vampiric"
execute if score #random temp matches 12 run data modify storage rotp:discovery subtype set value "berserker"

scoreboard players reset #random temp