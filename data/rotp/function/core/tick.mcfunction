
execute as @a at @s run function rotp:sub/player_ticks
execute as @e[type=interaction] at @s run function rotp:sub/interaction_tick
execute as @e[type=interaction,tag=pot_interaction,scores={explosion_timer=1..}] at @s run function rotp:core/block/placed/pot/trapped_pot/countdown_timer
function rotp:rune_effects/tick