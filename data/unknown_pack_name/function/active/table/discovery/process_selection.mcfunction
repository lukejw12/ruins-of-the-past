
execute unless items block ~ ~ ~ container.4 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.5 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:5b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.6 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.7 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:7b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.13 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.14 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:14b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.15 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.16 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.22 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:22b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.23 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:23b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.24 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:24b}].components."minecraft:custom_data"
execute unless items block ~ ~ ~ container.25 stone[custom_data~{discovery_result:1b}] run data modify storage unknown_pack_name:discovery selected set from block ~ ~ ~ Items[{Slot:25b}].components."minecraft:custom_data"

execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:1} run function unknown_pack_name:active/table/discovery/process_level1_selection
execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:2} run function unknown_pack_name:active/table/discovery/process_level2_selection
execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:3} run function unknown_pack_name:active/table/discovery/process_level3_selection