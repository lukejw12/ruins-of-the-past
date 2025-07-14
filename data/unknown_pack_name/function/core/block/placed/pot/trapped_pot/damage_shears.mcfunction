execute store result score #current_damage temp run data get entity @s SelectedItem.components."minecraft:damage"

item modify entity @s weapon.mainhand unknown_pack_name:damage_shears

execute if score #current_damage temp matches 229.. run item replace entity @s weapon.mainhand with air

scoreboard players reset #current_damage temp
