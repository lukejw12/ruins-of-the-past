# Create temporary item with reduced count
summon item ~ ~ ~ {Item:{id:"stone",count:1},Tags:["temp_update"],PickupDelay:0}
data modify entity @e[tag=temp_update,limit=1] Item set from storage rotp:temp player_item
execute store result entity @e[tag=temp_update,limit=1] Item.count int 1 run scoreboard players get #player_count temp
item replace entity @p[distance=..10] weapon.mainhand from entity @e[tag=temp_update,limit=1] container.0
kill @e[tag=temp_update]