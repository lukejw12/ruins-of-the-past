
particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.1 10
execute as @p[distance=..10,predicate=rotp:holding_shears] run function rotp:core/block/placed/pot/trapped_pot/damage_shears
function rotp:sub/handle_pot_break