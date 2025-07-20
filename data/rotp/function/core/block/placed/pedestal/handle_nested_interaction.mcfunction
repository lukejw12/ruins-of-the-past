execute if data entity @s interaction.player unless entity @p[distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pedestal/nested_deposit_item

execute if data entity @s interaction.player if entity @p[distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pedestal/nested_retrieve_item

data remove entity @s interaction