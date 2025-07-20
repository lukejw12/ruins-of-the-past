function rotp:active/table/recipes/ancient_tablet_craft

execute store result score #shatter_roll temp run random value 1..100

execute if score #shatter_roll temp matches 1..20 run item modify block ~ ~ ~ container.10 {function:set_count,count:-1,add:true}
execute if score #shatter_roll temp matches 1..20 run title @p[distance=..10] actionbar [{"text":"The ancient tablet proved too be to fragile, try again...","color":"red","italic":true}]

execute unless score #shatter_roll temp matches 1..20 if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{tablet_uses:0} run item modify block ~ ~ ~ container.10 {function:set_count,count:-1,add:true}

execute unless data storage rotp:discovery rarity if data storage rotp:discovery base_rarity run data modify storage rotp:discovery rarity set from storage rotp:discovery base_rarity
execute unless score #shatter_roll temp matches 1..20 run function rotp:active/table/discovery/give_reward

data remove storage rotp:discovery type
data remove storage rotp:discovery subtype
data remove storage rotp:discovery rarity
data remove storage rotp:discovery selected
data remove storage rotp:discovery base_rarity
data remove storage rotp:discovery target_word
data remove storage rotp:discovery grid_words
data remove storage rotp:discovery puzzle_active

scoreboard players set @s clean_tablets_next_tick 1
scoreboard players reset #shatter_roll temp