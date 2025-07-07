
scoreboard players set #stop temp 1

execute unless data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses run say "Starting discovery"
execute unless data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses run function unknown_pack_name:active/table/discovery/start_discovery

execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run say "Continuing discovery"
execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".discovery_level run function unknown_pack_name:active/table/discovery/continue_discovery