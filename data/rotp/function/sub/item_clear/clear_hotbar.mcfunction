$execute if items entity @s hotbar.$(slot) *[custom_data~{gui_filler:1b}] run item replace entity @s hotbar.$(slot) with air
$execute if items entity @s hotbar.$(slot) *[custom_data~{recipe_result:1b,recipe_type:"ancient_tablet"}] run item replace entity @s hotbar.$(slot) with air
$execute if items entity @s hotbar.$(slot) *[custom_data~{discovery_result:1b}] run item replace entity @s hotbar.$(slot) with air
$execute if items entity @s hotbar.$(slot) *[custom_data~{final_reward:1b}] run item replace entity @s hotbar.$(slot) with air
$execute if items entity @s hotbar.$(slot) test_block[custom_data~{ancient_tablet:1b,tablet_uses:3}] run item modify entity @s hotbar.$(slot) rotp:clean_tablet_data
$execute if items entity @s hotbar.$(slot) test_block[custom_data~{ancient_tablet:1b,tablet_uses:2}] run item modify entity @s hotbar.$(slot) rotp:clean_tablet_data
$execute if items entity @s hotbar.$(slot) test_block[custom_data~{ancient_tablet:1b,tablet_uses:1}] run item modify entity @s hotbar.$(slot) rotp:clean_tablet_data
$execute if items entity @s hotbar.$(slot) test_block[custom_data~{ancient_tablet:1b,discovery_level:1}] run item modify entity @s hotbar.$(slot) rotp:clean_tablet_data
$execute if items entity @s hotbar.$(slot) test_block[custom_data~{ancient_tablet:1b,discovery_level:2}] run item modify entity @s hotbar.$(slot) rotp:clean_tablet_data
$execute if items entity @s hotbar.$(slot) test_block[custom_data~{ancient_tablet:1b,discovery_level:3}] run item modify entity @s hotbar.$(slot) rotp:clean_tablet_data
