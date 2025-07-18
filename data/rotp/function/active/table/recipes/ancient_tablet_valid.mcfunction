scoreboard players set #stop temp 1

data modify block ~ ~ ~ custom_name set value {text:"Research Table | Initializing...",color:"gray"}

execute unless data block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tablet_uses run function rotp:active/table/discovery/start_discovery