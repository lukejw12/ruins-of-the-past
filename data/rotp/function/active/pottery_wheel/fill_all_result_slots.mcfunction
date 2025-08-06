
scoreboard players set #recipe_filled temp 0
execute if items block ~ ~ ~ container.1 #rotp:pottery_materials if items block ~ ~ ~ container.9 #rotp:pottery_materials if items block ~ ~ ~ container.11 #rotp:pottery_materials if items block ~ ~ ~ container.19 #rotp:pottery_materials run scoreboard players set #recipe_filled temp 1

execute if score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:4}
execute if score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:5}
execute if score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:6}
execute if score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:7}
execute if score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:13}
execute if score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:14}

execute unless score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:4}
execute unless score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:5}
execute unless score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:6}
execute unless score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:7}
execute unless score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:13}
execute unless score #recipe_filled temp matches 1 run function rotp:active/pottery_wheel/fill_result_slot {slot:14}

scoreboard players reset #recipe_filled temp