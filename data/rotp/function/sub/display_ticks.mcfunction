#failsafe in case the id tagging misses, which is low but can happen

execute as @s[tag=research_workbench_display] unless block ~ ~ ~ barrel run kill @s
execute as @s[tag=runic_altar_display] unless block ~ ~ ~ barrel run kill @s
execute as @s[tag=pottery_wheel_display] unless block ~ ~ ~ barrel run kill @s
execute as @s[tag=pedestal_display] unless block ~ ~ ~ barrier run kill @s