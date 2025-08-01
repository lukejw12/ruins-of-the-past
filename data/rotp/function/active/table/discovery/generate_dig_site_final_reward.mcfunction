function rotp:active/table/recipes/ancient_tablet_craft

execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{tablet_uses:0} run item modify block ~ ~ ~ container.10 {function:set_count,count:-1,add:true}

execute unless data storage rotp:discovery rarity if data storage rotp:discovery base_rarity run data modify storage rotp:discovery rarity set from storage rotp:discovery base_rarity

execute store result score #dig_site_type temp run random value 1..3

execute if score #dig_site_type temp matches 1 run loot give @p loot rotp:maps/dig_site
execute if score #dig_site_type temp matches 2 run loot give @p loot rotp:maps/crypt
execute if score #dig_site_type temp matches 3 run loot give @p loot rotp:maps/mayan

tellraw @p[distance=..10] [{"text":"Discovery Complete! Type: "},{"storage":"rotp:discovery","nbt":"type"},{"text":", Subtype: "},{"storage":"rotp:discovery","nbt":"subtype"},{"text":", Rarity: "},{"storage":"rotp:discovery","nbt":"rarity"}]

data remove storage rotp:discovery type
data remove storage rotp:discovery subtype
data remove storage rotp:discovery rarity
data remove storage rotp:discovery selected
data remove storage rotp:discovery base_rarity
data remove storage rotp:discovery target_word
data remove storage rotp:discovery grid_words
data remove storage rotp:discovery puzzle_active
scoreboard players set @s clean_tablets_next_tick 1

scoreboard players reset #dig_site_type temp