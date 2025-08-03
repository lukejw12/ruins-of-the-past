execute if data entity @s interaction.player on target run tag @s add pedestal_interact
execute if data entity @s interaction.player unless entity @a[tag=pedestal_interact,distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pedestal/nano_deposit_item

execute if data entity @s interaction.player if entity @a[tag=pedestal_interact,distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pedestal/nano_retrieve_item
execute on target run tag @s[tag=pedestal_interact] remove pedestal_interact

data remove entity @s interaction