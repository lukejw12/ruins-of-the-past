scoreboard players set #should_process temp 1
execute unless items block ~ ~ ~ container.10 stone[custom_data~{ancient_tablet:1b}] run scoreboard players set #should_process temp 0
execute unless items block ~ ~ ~ container.11 spyglass run scoreboard players set #should_process temp 0
execute if score #should_process temp matches 1 run function rotp:active/table/discovery/check_discovery_click_actual

scoreboard players reset #should_process temp