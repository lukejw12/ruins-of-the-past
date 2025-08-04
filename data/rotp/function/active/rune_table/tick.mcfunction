kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{gui_filler:1b}}}}]
execute unless block ~ ~ ~ barrel run execute as @e[type=item_display,tag=runic_altar_display,distance=..2] if score @s altar_id = @e[type=marker,tag=rune_table,limit=1,sort=nearest] altar_id run kill @s
execute unless block ~ ~ ~ barrel run kill @s
execute unless block ~ ~ ~ barrel run item modify entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrel"}}] contents {function:"set_count",count:-1,add:true}
execute unless block ~ ~ ~ barrel run summon item ~ ~0.2 ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:blast_furnace",count:1,components:{"minecraft:container":[{slot:0,item:{components:{"minecraft:custom_data":{runic_altar:1b}},count:1,id:"minecraft:stone"}}],"minecraft:custom_data":{runic_altar_placable:1b},"minecraft:item_model":"rotp:blocks/handheld/runic_alter","minecraft:item_name":{"bold":false,"italic":false,"obfuscated":false,"strikethrough":false,"text":"Runic Altar","underlined":false},"minecraft:rarity":"rare","minecraft:tooltip_display":{hidden_components:["container"]}}}}
execute if block ~ ~ ~ barrel[open=false] run function rotp:active/rune_table/clear_result
execute if block ~ ~ ~ barrel[open=false] run function rotp:active/rune_table/clear_gui_slots
data merge block ~ ~ ~ {CustomName:"Runic Altar"}
scoreboard players add @s tick_counter 1

execute unless block ~ ~ ~ barrel[open=true] run return 0

execute if block ~ ~ ~ barrel[open=true] if score @s tick_counter matches 2 run function rotp:active/rune_table/check_result_taken
execute if block ~ ~ ~ barrel[open=true] if score @s tick_counter matches 2 run function rotp:active/rune_table/fill_gui_slots
execute if block ~ ~ ~ barrel[open=true] if score @s tick_counter matches 2 run function rotp:active/rune_table/check_recipe

execute if score @s tick_counter matches 2.. run scoreboard players set @s tick_counter 0
