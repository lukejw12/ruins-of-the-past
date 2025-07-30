execute as @s[tag=pot_interaction] if data entity @s interaction.player run function rotp:sub/check_pot_interaction
execute as @s[tag=pot_interaction] if data entity @s attack.player run function rotp:sub/check_pot_interaction
execute as @s[tag=pedestal_interaction] if data entity @s interaction.player run function rotp:core/block/placed/pedestal/handle_interaction
execute as @s[tag=pedestal_interaction] if data entity @s attack.player run function rotp:core/block/placed/pedestal/handle_interaction
execute as @s[tag=nested_pedestal_interaction] if data entity @s interaction.player run function rotp:core/block/placed/pedestal/handle_nested_interaction
execute as @s[tag=nested_pedestal_interaction] if data entity @s attack.player run function rotp:core/block/placed/pedestal/handle_nested_interaction
execute as @s[tag=nano_pedestal_interaction] if data entity @s interaction.player run function rotp:core/block/placed/pedestal/handle_nano_interaction
execute as @s[tag=nano_pedestal_interaction] if data entity @s attack.player run function rotp:core/block/placed/pedestal/handle_nano_interaction
execute as @s[tag=pot_interaction,scores={explosion_timer=1..}] at @s run function rotp:core/block/placed/pot/trapped_pot/countdown_timer

