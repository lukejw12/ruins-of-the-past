execute store result storage rotp:temp player_uuid int 1 run data get entity @p[distance=..10,limit=1] UUID[0]

execute if data entity @s interaction.player unless entity @p[distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pot/linked_storage/deposit
execute if data entity @s interaction.player if entity @p[distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pot/linked_storage/withdraw
data remove entity @s interaction