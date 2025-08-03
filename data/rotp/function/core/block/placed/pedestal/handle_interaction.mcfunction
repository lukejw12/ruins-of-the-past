execute if data entity @s interaction.player on target run tag @s add pedestal_interact

execute if data entity @s interaction.player unless entity @a[tag=pedestal_interact,distance=..10,predicate=rotp:sneaking] run function rotp:core/block/placed/pedestal/deposit_item

execute if data entity @s interaction.player if entity @a[tag=pedestal_interact,distance=..10,predicate=rotp:sneaking] unless items entity @p[distance=..10] weapon.mainhand #rotp:dyes unless items entity @p[distance=..10] weapon.mainhand minecraft:potion[minecraft:potion_contents="water"] run function rotp:core/block/placed/pedestal/retrieve_item

execute if data entity @s interaction.player if entity @a[tag=pedestal_interact,distance=..10,predicate=rotp:sneaking] if items entity @p[distance=..10] weapon.mainhand #rotp:dyes run function rotp:core/block/placed/pedestal/apply_dye
execute if data entity @s interaction.player if entity @a[tag=pedestal_interact,distance=..10,predicate=rotp:sneaking] if items entity @p[distance=..10] weapon.mainhand minecraft:potion[minecraft:potion_contents="water"] run function rotp:core/block/placed/pedestal/remove_dye

execute if data entity @s attack run function rotp:core/block/placed/pedestal/break_pedestal
execute on target run tag @s[tag=pedestal_interact] remove pedestal_interact

data remove entity @s interaction
data remove entity @s attack