summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["temp_item_clear"],PickupDelay:0}
$data modify entity @e[tag=temp_item_clear,limit=1] Item set from entity @s Inventory[{Slot:$(slot)b}]
data remove entity @e[tag=temp_item_clear,limit=1] Item.components."minecraft:custom_data".display_item
$item replace entity @s hotbar.$(slot) from entity @e[tag=temp_item_clear,limit=1] container.0
kill @e[tag=temp_item_clear]