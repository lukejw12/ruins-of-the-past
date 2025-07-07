$execute if items entity @s inventory.$(slot) stone[custom_data={gui_filler:1b}] run item replace entity @s inventory.$(slot) with air
execute if items entity @s player.cursor stone[custom_data={gui_filler:1b}] run item replace entity @s player.cursor with air
$execute if items entity @s inventory.$(slot) *[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run item replace entity @s inventory.$(slot) with air
execute if items entity @s player.cursor *[custom_data={recipe_result:1b,recipe_type:"ancient_tablet"}] run item replace entity @s player.cursor with air