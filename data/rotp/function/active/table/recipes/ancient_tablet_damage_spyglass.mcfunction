execute if items block ~ ~ ~ container.11 spyglass[!max_damage] run item replace block ~ ~ ~ container.11 with minecraft:spyglass[minecraft:max_damage=309,minecraft:damage=0]
item modify block ~ ~ ~ container.11 rotp:damage_spyglass

item modify block ~ ~ ~ container.10 {function:set_count,count:-1,add:true}
function rotp:active/table/recipes/ancient_tablet_clear_results

