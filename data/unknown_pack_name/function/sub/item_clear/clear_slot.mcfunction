$execute if items entity @s inventory.$(slot) *[custom_data~{gui_filler:1b}] run item replace entity @s inventory.$(slot) with air
execute if items entity @s player.cursor *[custom_data~{gui_filler:1b}] run item replace entity @s player.cursor with air

$execute if items entity @s inventory.$(slot) *[custom_data~{recipe_result:1b,recipe_type:"ancient_tablet"}] run item replace entity @s inventory.$(slot) with air
execute if items entity @s player.cursor *[custom_data~{recipe_result:1b,recipe_type:"ancient_tablet"}] run item replace entity @s player.cursor with air

$execute if items entity @s inventory.$(slot) *[custom_data~{discovery_result:1b}] run item replace entity @s inventory.$(slot) with air
execute if items entity @s player.cursor *[custom_data~{discovery_result:1b}] run item replace entity @s player.cursor with air

$execute if items entity @s inventory.$(slot) *[custom_data~{final_reward:1b}] run item replace entity @s inventory.$(slot) with air
execute if items entity @s player.cursor *[custom_data~{final_reward:1b}] run item replace entity @s player.cursor with air
$execute if items entity @s inventory.$(slot) stone[custom_data~{ancient_tablet:1b,tablet_uses:3}] run item modify entity @s inventory.$(slot) unknown_pack_name:clean_tablet_data
$execute if items entity @s inventory.$(slot) stone[custom_data~{ancient_tablet:1b,tablet_uses:2}] run item modify entity @s inventory.$(slot) unknown_pack_name:clean_tablet_data
$execute if items entity @s inventory.$(slot) stone[custom_data~{ancient_tablet:1b,tablet_uses:1}] run item modify entity @s inventory.$(slot) unknown_pack_name:clean_tablet_data
$execute if items entity @s inventory.$(slot) stone[custom_data~{ancient_tablet:1b,discovery_level:1}] run item modify entity @s inventory.$(slot) unknown_pack_name:clean_tablet_data
$execute if items entity @s inventory.$(slot) stone[custom_data~{ancient_tablet:1b,discovery_level:2}] run item modify entity @s inventory.$(slot) unknown_pack_name:clean_tablet_data
$execute if items entity @s inventory.$(slot) stone[custom_data~{ancient_tablet:1b,discovery_level:3}] run item modify entity @s inventory.$(slot) unknown_pack_name:clean_tablet_data

execute if items entity @s player.cursor stone[custom_data~{ancient_tablet:1b,tablet_uses:3}] run item modify entity @s player.cursor unknown_pack_name:clean_tablet_data
execute if items entity @s player.cursor stone[custom_data~{ancient_tablet:1b,tablet_uses:2}] run item modify entity @s player.cursor unknown_pack_name:clean_tablet_data
execute if items entity @s player.cursor stone[custom_data~{ancient_tablet:1b,tablet_uses:1}] run item modify entity @s player.cursor unknown_pack_name:clean_tablet_data
execute if items entity @s player.cursor stone[custom_data~{ancient_tablet:1b,discovery_level:1}] run item modify entity @s player.cursor unknown_pack_name:clean_tablet_data
execute if items entity @s player.cursor stone[custom_data~{ancient_tablet:1b,discovery_level:2}] run item modify entity @s player.cursor unknown_pack_name:clean_tablet_data
execute if items entity @s player.cursor stone[custom_data~{ancient_tablet:1b,discovery_level:3}] run item modify entity @s player.cursor unknown_pack_name:clean_tablet_data