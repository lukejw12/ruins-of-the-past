scoreboard players operation #current_pedestal_id temp = @s pedestal_id

execute if data entity @s data.stored_item.id run function rotp:core/block/placed/pedestal/drop_stored_item
execute as @e[scores={pedestal_id=0..}] if score @s pedestal_id = #current_pedestal_id temp run kill @s

execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air
particle block{block_state:barrier} ~ ~0.5 ~ 0.3 0.3 0.3 0 20
playsound block.stone.break block @a[distance=..8]

scoreboard players reset #current_pedestal_id temp