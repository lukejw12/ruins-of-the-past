item replace block ~ ~ ~ container.11 with air
item modify block ~ ~ ~ container.10 {function:set_count,count:-1,add:true}

function rotp:active/table/recipes/ancient_tablet_clear_results
execute at @p[distance=..10] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0,Motion:[0.0,0.1,0.0]}
