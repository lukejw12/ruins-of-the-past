execute store result score #guesses_used temp run data get storage rotp:discovery guesses_used 1
execute if score #guesses_used temp matches 1 run data modify storage rotp:discovery base_rarity set value "legendary"
execute if score #guesses_used temp matches 2 run data modify storage rotp:discovery base_rarity set value "epic"
execute if score #guesses_used temp matches 3 run data modify storage rotp:discovery base_rarity set value "rare"
execute if score #guesses_used temp matches 4 run data modify storage rotp:discovery base_rarity set value "uncommon"
execute if score #guesses_used temp matches 5 run data modify storage rotp:discovery base_rarity set value "common"
execute if score #guesses_used temp matches 1 store result score #exquisite_roll temp run random value 1..2000
execute if score #exquisite_roll temp matches 1 run data modify storage rotp:discovery base_rarity set value "exquisite"
scoreboard players reset #guesses_used temp
scoreboard players reset #exquisite_roll temp