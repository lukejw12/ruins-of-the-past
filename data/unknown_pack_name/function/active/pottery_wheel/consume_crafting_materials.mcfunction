scoreboard players set #recipe_filled temp 0
execute if items block ~ ~ ~ container.1 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.9 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.11 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.19 #unknown_pack_name:pottery_materials run scoreboard players set #recipe_filled temp 1

execute if score #recipe_filled temp matches 0 run return 0

scoreboard players set #can_consume temp 0

execute if items block ~ ~ ~ container.1 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.19 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.11 #unknown_pack_name:pottery_materials if items block ~ ~ ~ container.9 #unknown_pack_name:pottery_materials run scoreboard players set #can_consume temp 1

execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.1 #unknown_pack_name:pottery_materials run item modify block ~ ~ ~ container.1 {function:set_count,count:-1,add:true}
execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.19 #unknown_pack_name:pottery_materials run item modify block ~ ~ ~ container.19 {function:set_count,count:-1,add:true}
execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.11 #unknown_pack_name:pottery_materials run item modify block ~ ~ ~ container.11 {function:set_count,count:-1,add:true}
execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.9 #unknown_pack_name:pottery_materials run item modify block ~ ~ ~ container.9 {function:set_count,count:-1,add:true}

execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.10 tnt run item modify block ~ ~ ~ container.10 {function:set_count,count:-1,add:true}
execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.10 bundle run item modify block ~ ~ ~ container.10 {function:set_count,count:-1,add:true}
execute if score #can_consume temp matches 1 if items block ~ ~ ~ container.10 ender_eye run item modify block ~ ~ ~ container.10 {function:set_count,count:-1,add:true}

scoreboard players reset #can_consume temp
scoreboard players reset #recipe_filled temp