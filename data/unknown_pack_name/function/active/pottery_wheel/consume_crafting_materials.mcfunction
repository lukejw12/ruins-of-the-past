
scoreboard players set #can_consume temp 0

execute if items block ~ ~ ~ container.1 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.9 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.11 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.19 #unknown_pack_name:pottery_materials run scoreboard players set #can_consume temp 1
execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.1 #unknown_pack_name:pottery_materials run item modify block ~ ~ ~ container.1 {function:set_count,count:-1,add:true}
execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.9 #unknown_pack_name:pottery_materials run item modify block ~ ~ ~ container.9 {function:set_count,count:-1,add:true}
execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.11 #unknown_pack_name:pottery_materials run item modify block ~ ~ ~ container.11 {function:set_count,count:-1,add:true}
execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.19 #unknown_pack_name:pottery_materials run item modify block ~ ~ ~ container.19 {function:set_count,count:-1,add:true}

scoreboard players reset #can_consume temp