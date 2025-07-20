scoreboard players operation #current_table_id temp = @s table_id
execute as @e[tag=research_workbench_display] if score @s table_id = #current_table_id temp run kill @s
summon item ~ ~0.2 ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:loom",count:1,components:{"minecraft:custom_data":{research_workbench_placable:1b},"minecraft:item_model":"rotp:blocks/handheld/research_workbench","minecraft:item_name":{"color":"white","text":"Research Workbench"}}}}
item modify entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrel"}}] contents {function:"set_count",count:-1,add:true}

kill @s

scoreboard players reset #current_table_id temp