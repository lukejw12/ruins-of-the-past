scoreboard players set #recipe_filled temp 0
execute if items block ~ ~ ~ container.1 #rotp:pottery_materials if items block ~ ~ ~ container.9 #rotp:pottery_materials if items block ~ ~ ~ container.11 #rotp:pottery_materials if items block ~ ~ ~ container.19 #rotp:pottery_materials run scoreboard players set #recipe_filled temp 1

execute if score #recipe_filled temp matches 0 run return 0

execute store result score #slot4_count temp run data get block ~ ~ ~ Items[{Slot:4b}].count
execute store result score #slot5_count temp run data get block ~ ~ ~ Items[{Slot:5b}].count
execute store result score #slot6_count temp run data get block ~ ~ ~ Items[{Slot:6b}].count
execute store result score #slot7_count temp run data get block ~ ~ ~ Items[{Slot:7b}].count
execute store result score #slot13_count temp run data get block ~ ~ ~ Items[{Slot:13b}].count
execute store result score #slot14_count temp run data get block ~ ~ ~ Items[{Slot:14b}].count

execute if score #slot4_count temp matches 2.. run function rotp:active/pottery_wheel/return_excess_from_slot {slot:4}
execute if score #slot5_count temp matches 2.. run function rotp:active/pottery_wheel/return_excess_from_slot {slot:5}
execute if score #slot6_count temp matches 2.. run function rotp:active/pottery_wheel/return_excess_from_slot {slot:6}
execute if score #slot7_count temp matches 2.. run function rotp:active/pottery_wheel/return_excess_from_slot {slot:7}
execute if score #slot13_count temp matches 2.. run function rotp:active/pottery_wheel/return_excess_from_slot {slot:13}
execute if score #slot14_count temp matches 2.. run function rotp:active/pottery_wheel/return_excess_from_slot {slot:14}

scoreboard players reset #recipe_filled temp
scoreboard players reset #slot4_count temp
scoreboard players reset #slot5_count temp
scoreboard players reset #slot6_count temp
scoreboard players reset #slot7_count temp
scoreboard players reset #slot13_count temp
scoreboard players reset #slot14_count temp