execute unless score @s has_result matches 0.. run scoreboard players set @s has_result 0

scoreboard players set #current_has_result temp 0
scoreboard players set #had_result_before temp 0

# Store previous state
scoreboard players operation #had_result_before temp = @s has_result

# Check current state
execute if items block ~ ~ ~ container.22 *[custom_data~{rune_result:1b}] run scoreboard players add #current_has_result temp 1

# If we had a result before (1) and now we don't (0), and it wasn't system cleared, then player took it
execute if score #had_result_before temp matches 1 if score #current_has_result temp matches 0 unless score @s system_cleared matches 1 run function unknown_pack_name:active/rune_table/consume_crafting_materials

# Update has_result state
execute if score #current_has_result temp matches 1 run scoreboard players set @s has_result 1
execute if score #current_has_result temp matches 0 run scoreboard players set @s has_result 0

# Reset the system cleared flag
scoreboard players reset @s system_cleared

scoreboard players reset #current_has_result temp
scoreboard players reset #had_result_before temp