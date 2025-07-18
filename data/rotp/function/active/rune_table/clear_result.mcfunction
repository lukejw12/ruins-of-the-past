execute if items block ~ ~ ~ container.22 *[custom_data~{rune_result:1b}] run scoreboard players set @s system_cleared 1
execute if items block ~ ~ ~ container.22 *[custom_data~{incompatible_result:1b}] run scoreboard players set @s system_cleared 1

execute if items block ~ ~ ~ container.22 *[custom_data~{rune_result:1b}] run item replace block ~ ~ ~ container.22 with light_gray_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]
execute if items block ~ ~ ~ container.22 *[custom_data~{incompatible_result:1b}] run item replace block ~ ~ ~ container.22 with light_gray_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={gui_filler:1b}]