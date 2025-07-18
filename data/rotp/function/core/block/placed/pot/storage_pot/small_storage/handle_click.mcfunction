execute if data entity @s interaction.player unless entity @p[distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pot/storage_pot/small_storage/deposit
execute if data entity @s interaction.player if entity @p[distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pot/storage_pot/small_storage/withdraw
data remove entity @s interaction