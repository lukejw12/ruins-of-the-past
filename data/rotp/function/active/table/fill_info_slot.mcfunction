execute unless items block ~ ~ ~ container.26 stone[custom_data~{info_display:1b}] unless items block ~ ~ ~ container.26 stone[custom_data~{setup_guide:1b}] unless items block ~ ~ ~ container.26 stone[custom_data~{puzzle_info:1b}] unless items block ~ ~ ~ container.26 stone[custom_data={gui_filler:1b}] if items block ~ ~ ~ container.26 * run function rotp:active/table/return_item {slot:26}

execute store result score #discovery_level temp run data get block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level 1

execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:1} if data storage rotp:discovery {puzzle_active:1b} unless items block ~ ~ ~ container.26 stone[custom_data~{info_display:1b}] run function rotp:active/table/discovery/update_info_display

execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:2} if data storage rotp:puzzle_game {puzzle_active:1b} unless items block ~ ~ ~ container.26 stone[custom_data~{puzzle_info:1b}] run function rotp:active/table/discovery/update_puzzle_info_display

execute if items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] unless data storage rotp:discovery {puzzle_active:1b} unless data storage rotp:puzzle_game {puzzle_active:1b} unless items block ~ ~ ~ container.26 stone[custom_data={setup_guide:1b}] run item replace block ~ ~ ~ container.26 with stone[item_name={text:"Research Guide",color:"dark_gray"},lore=[{text:"Place Ancient Tablet in left slot.",color:"gray",italic:false},{text:"Place Spyglass in right slot to begin.",color:"gray",italic:false}],item_model="rotp:gui_elements/gui_info",custom_data={gui_filler:1b,setup_guide:1b}]

execute unless items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] unless items block ~ ~ ~ container.26 stone[custom_data~{setup_guide:1b}] run item replace block ~ ~ ~ container.26 with stone[item_name={text:"Research Guide",color:"dark_gray"},lore=[{text:"Place Ancient Tablet in left slot.",color:"gray",italic:false},{text:"Place Spyglass in right slot to begin.",color:"gray",italic:false}],item_model="rotp:gui_elements/gui_info",custom_data={gui_filler:1b,setup_guide:1b}]

scoreboard players reset #discovery_level temp