$execute if items entity @p[distance=..10] $(location).$(slot) test_block[custom_data~{ancient_tablet:1b,discovery_level:1}] run item modify entity @p[distance=..10] $(location).$(slot) rotp:clean_tablet_data
$execute if items entity @p[distance=..10] $(location).$(slot) test_block[custom_data~{ancient_tablet:1b,discovery_level:2}] run item modify entity @p[distance=..10] $(location).$(slot) rotp:clean_tablet_data
$execute if items entity @p[distance=..10] $(location).$(slot) test_block[custom_data~{ancient_tablet:1b,discovery_level:3}] run item modify entity @p[distance=..10] $(location).$(slot) rotp:clean_tablet_data

execute if items entity @p[distance=..10] player.cursor test_block[custom_data~{ancient_tablet:1b,tablet_uses:3}] run item modify entity @p[distance=..10] player.cursor rotp:clean_tablet_data
execute if items entity @p[distance=..10] player.cursor test_block[custom_data~{ancient_tablet:1b,tablet_uses:2}] run item modify entity @p[distance=..10] player.cursor rotp:clean_tablet_data
execute if items entity @p[distance=..10] player.cursor test_block[custom_data~{ancient_tablet:1b,tablet_uses:1}] run item modify entity @p[distance=..10] player.cursor rotp:clean_tablet_data
execute if items entity @p[distance=..10] player.cursor test_block[custom_data~{ancient_tablet:1b,discovery_level:1}] run item modify entity @p[distance=..10] player.cursor rotp:clean_tablet_data
execute if items entity @p[distance=..10] player.cursor test_block[custom_data~{ancient_tablet:1b,discovery_level:2}] run item modify entity @p[distance=..10] player.cursor rotp:clean_tablet_data
execute if items entity @p[distance=..10] player.cursor test_block[custom_data~{ancient_tablet:1b,discovery_level:3}] run item modify entity @p[distance=..10] player.cursor rotp:clean_tablet_data