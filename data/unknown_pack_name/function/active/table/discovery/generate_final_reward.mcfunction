function unknown_pack_name:active/table/recipes/ancient_tablet_craft
execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{tablet_uses:0} run item replace block ~ ~ ~ container.10 with air

function unknown_pack_name:active/table/discovery/give_reward

data remove block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level
data modify storage unknown_pack_name:discovery clear