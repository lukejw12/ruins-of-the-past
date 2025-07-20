execute as @e[type=item_display] at @s run function rotp:sub/display_ticks
execute as @a at @s run function rotp:sub/player_ticks
execute as @e[type=interaction] at @s run function rotp:sub/interaction_tick
function rotp:rune_effects/tick
function rotp:sub/dynamic_lighting_tick
