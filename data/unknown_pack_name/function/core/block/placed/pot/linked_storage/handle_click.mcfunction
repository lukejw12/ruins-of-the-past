execute store result storage unknown_pack_name:temp player_uuid int 1 run data get entity @p[distance=..10,limit=1] UUID[0]

execute if data entity @s interaction.player unless entity @p[distance=..10,predicate=unknown_pack_name:sneaking] run function unknown_pack_name:core/block/placed/pot/linked_storage/deposit
execute if data entity @s interaction.player if entity @p[distance=..10,predicate=unknown_pack_name:sneaking] run function unknown_pack_name:core/block/placed/pot/linked_storage/withdraw
data remove entity @s interaction