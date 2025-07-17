
execute as @a at @s run function unknown_pack_name:sub/player_ticks
execute as @e[type=interaction] at @s run function unknown_pack_name:sub/interaction_tick
execute as @e[type=interaction,tag=pot_interaction,scores={explosion_timer=1..}] at @s run function unknown_pack_name:core/block/placed/pot/trapped_pot/countdown_timer
function unknown_pack_name:rune_effects/tick