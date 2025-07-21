execute on target run tag @s add current_player
execute if data entity @s interaction.player unless entity @p[distance=..10,predicate=rotp:sneaking,tag=current_player] run function rotp:core/block/placed/pot/storage_pot/small_storage/deposit
execute if data entity @s interaction.player if entity @p[distance=..10,predicate=rotp:sneaking,tag=current_player] run function rotp:core/block/placed/pot/storage_pot/small_storage/withdraw
execute on target run tag @s remove current_player
data remove entity @s interaction