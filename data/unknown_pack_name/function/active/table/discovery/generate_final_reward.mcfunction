function unknown_pack_name:active/table/recipes/ancient_tablet_craft

# Chance for tablet to shatter (20% chance)
execute store result score #shatter_roll temp run random value 1..100
execute if score #shatter_roll temp matches 1..20 run item replace block ~ ~ ~ container.10 with air
execute if score #shatter_roll temp matches 1..20 run tellraw @p[distance=..10] [{"text":"The ancient tablet crumbles to dust from the intense research...","color":"red","italic":true}]
execute unless score #shatter_roll temp matches 1..20 if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{tablet_uses:0} run item replace block ~ ~ ~ container.10 with air

execute unless data storage unknown_pack_name:discovery rarity if data storage unknown_pack_name:discovery base_rarity run data modify storage unknown_pack_name:discovery rarity set from storage unknown_pack_name:discovery base_rarity
function unknown_pack_name:active/table/discovery/give_reward

data remove storage unknown_pack_name:discovery type
data remove storage unknown_pack_name:discovery subtype
data remove storage unknown_pack_name:discovery rarity
data remove storage unknown_pack_name:discovery selected
data remove storage unknown_pack_name:discovery base_rarity
data remove storage unknown_pack_name:discovery target_word
data remove storage unknown_pack_name:discovery grid_words
data remove storage unknown_pack_name:discovery puzzle_active

scoreboard players set @s clean_tablets_next_tick 1
scoreboard players reset #shatter_roll temp