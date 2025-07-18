# Trash(90%), Common(70%), Uncommon(30%), Rare(20%), Epic(15%), Legendary(5%), Exquisite(0.5%)
execute store result score #rarity_roll temp run random value 1..1000

execute if score #rarity_roll temp matches 1..5 run data modify storage rotp:discovery rarity set value "exquisite"
execute if score #rarity_roll temp matches 6..55 run data modify storage rotp:discovery rarity set value "legendary"
execute if score #rarity_roll temp matches 56..205 run data modify storage rotp:discovery rarity set value "epic"
execute if score #rarity_roll temp matches 206..405 run data modify storage rotp:discovery rarity set value "rare"
execute if score #rarity_roll temp matches 406..705 run data modify storage rotp:discovery rarity set value "uncommon"
execute if score #rarity_roll temp matches 706..900 run data modify storage rotp:discovery rarity set value "common"
execute if score #rarity_roll temp matches 901..1000 run data modify storage rotp:discovery rarity set value "trash"

scoreboard players reset #rarity_roll temp