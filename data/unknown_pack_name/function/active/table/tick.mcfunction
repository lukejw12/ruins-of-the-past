function unknown_pack_name:active/table/fill_gui_slots
execute unless block ~ ~ ~ barrel run kill @s
execute unless score #stop temp matches 1.. if items block ~ ~ ~ container.10 *[item_model="unknown_pack_name:items/ancient_tablet"] if items block ~ ~ ~ container.11 spyglass run function unknown_pack_name:active/table/recipes/ancient_tablet_valid
execute if items block ~ ~ ~ container.10 *[item_model="unknown_pack_name:items/ancient_tablet"] if items block ~ ~ ~ container.11 spyglass run function unknown_pack_name:active/table/recipes/check_if_selected
