execute if entity @s[tag=table] run function rotp:active/table/tick
execute if entity @s[tag=pottery_wheel] run function rotp:active/pottery_wheel/tick
execute if entity @s[tag=rune_table] run function rotp:active/rune_table/tick
execute if entity @s[tag=rotp.spawn_pedestal] run function rotp:structure/spawn_pedestal_loot {loot_table:"rotp:temple/mayan_pedestal"}
execute if entity @s[tag=rotp.spawn_pedestal_runic] run function rotp:structure/spawn_runic_altar_pedestal
