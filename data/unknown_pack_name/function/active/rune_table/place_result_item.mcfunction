summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["temp_result_item"],PickupDelay:0}
data modify entity @e[tag=temp_result_item,limit=1] Item set from storage unknown_pack_name:temp enhanced_item
item replace block ~ ~ ~ container.22 from entity @e[tag=temp_result_item,limit=1] container.0
kill @e[tag=temp_result_item]