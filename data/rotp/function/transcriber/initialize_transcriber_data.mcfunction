data modify entity @s data.stored_item.components."minecraft:custom_data".stored_points set value 0

execute unless data entity @s data.stored_item.components."minecraft:lore" run data modify entity @s data.stored_item.components."minecraft:lore" set value []
data modify entity @s data.stored_item.components."minecraft:lore" set value []
data modify entity @s data.stored_item.components."minecraft:lore" append value {text:"   ",italic:false}
data modify entity @s data.stored_item.components."minecraft:lore" append value {text:"Can Hold:",color:"gray",italic:false}
data modify entity @s data.stored_item.components."minecraft:lore" append value {text:"80000 XP",color:"blue",italic:false}
data modify entity @s data.stored_item.components."minecraft:lore" append value {text:"Contains:",color:"gray",italic:false}
data modify entity @s data.stored_item.components."minecraft:lore" append value {text:"0 XP",color:"blue",italic:false}

scoreboard players operation #current_pedestal_id temp = @s pedestal_id
execute as @e[tag=pedestal_item_display] if score @s pedestal_id = #current_pedestal_id temp run data modify entity @s item set from entity @e[tag=pedestal_interaction,limit=1,sort=nearest] data.stored_item

tellraw @a[distance=..5] {"text":"Transcriber initialized on pedestal!","color":"green"}

scoreboard players reset #current_pedestal_id temp