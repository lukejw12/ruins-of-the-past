scoreboard players operation #current_table_id temp = @s table_id
execute as @e[tag=research_workbench_display] if score @s table_id = #current_table_id temp run kill @s
summon item ~ ~0.2 ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:blast_furnace",count:1,components:{"minecraft:container":[{slot:0,item:{components:{"minecraft:custom_data":{research_workbench:1b}},count:1,id:"minecraft:stone"}}],"minecraft:custom_data":{research_workbench_placable:1b},"minecraft:item_model":"rotp:blocks/handheld/research_workbench","minecraft:item_name":{"color":"white","text":"Research Workbench"},"minecraft:tooltip_display":{hidden_components:["container"]}}}}
item modify entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrel"}}] contents {function:"set_count",count:-1,add:true}
kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{gui_filler:1b}}}}]
kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{word_puzzle:1b}}}}]
kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{puzzle_piece:1b}}}}]
kill @s

scoreboard players reset #current_table_id temp