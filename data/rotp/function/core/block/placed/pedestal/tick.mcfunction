execute as @e[tag=pedestal_item_display,type=item_display] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=tiny_item_display,type=item_display] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=nano_item_display,type=item_display] at @s run tp @s ~ ~ ~ ~12 ~

execute as @e[tag=pedestal_interaction] at @s run function rotp:transcriber/check_pedestal_transcriber