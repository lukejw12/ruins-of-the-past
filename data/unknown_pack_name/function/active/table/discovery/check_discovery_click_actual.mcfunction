execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:1} run scoreboard players set #expected_slots temp 12
execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:2} run scoreboard players set #expected_slots temp 12
execute if data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"{discovery_level:3} run scoreboard players set #expected_slots temp 12
scoreboard players set #actual_slots temp 0
execute if items block ~ ~ ~ container.4 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.5 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.6 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.7 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.13 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.14 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.15 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.16 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.22 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.23 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.24 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute if items block ~ ~ ~ container.25 stone[custom_data~{discovery_result:1b}] run scoreboard players add #actual_slots temp 1
execute unless score #actual_slots temp = #expected_slots temp run function unknown_pack_name:active/table/discovery/process_selection

scoreboard players reset #actual_slots temp
scoreboard players reset #expected_slots temp