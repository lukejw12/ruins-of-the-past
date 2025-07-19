execute if data entity @s interaction.player unless entity @p[distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pedestal/deposit_item

execute if data entity @s interaction.player if entity @p[distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pedestal/retrieve_item

execute if data entity @s attack run function rotp:core/block/placed/pedestal/break_pedestal

data remove entity @s interaction
data remove entity @s attack