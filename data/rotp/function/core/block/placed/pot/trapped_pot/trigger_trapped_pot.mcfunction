scoreboard players operation #current_pot_id temp = @s pot_id
execute as @e[scores={pot_id=0..}] if score @s pot_id = #current_pot_id temp run kill @s

execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air

function rotp:core/block/placed/pot/trapped_pot/start_chain_timers

summon tnt ~ ~ ~ {fuse:6,explosion_power:1f}

scoreboard players reset #current_pot_id temp