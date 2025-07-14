particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.1 10
execute as @p[distance=..10,predicate=unknown_pack_name:holding_shears] run function unknown_pack_name:core/block/placed/pot/trapped_pot/damage_shears
function unknown_pack_name:sub/handle_pot_break