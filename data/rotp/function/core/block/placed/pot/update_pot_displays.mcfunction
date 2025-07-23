scoreboard players operation #current_pot_id temp = @s pot_id
execute store result storage rotp:temp current_dye_color int 1 run scoreboard players get #dye_color temp

execute as @e[tag=pot_base,scores={pot_id=0..}] if score @s pot_id = #current_pot_id temp run function rotp:core/block/placed/pot/apply_tint_to_base
execute as @e[tag=pot_display,scores={pot_id=0..}] if score @s pot_id = #current_pot_id temp unless entity @s[tag=pot_base] run function rotp:core/block/placed/pot/apply_tint_to_pattern

scoreboard players reset #current_pot_id temp