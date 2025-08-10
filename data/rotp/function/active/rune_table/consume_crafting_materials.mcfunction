data modify storage rotp:temp current_rune_type set value ""
execute if items block ~ ~ ~ container.11 *[custom_data~{luminous_rune:1b}] run data modify storage rotp:temp current_rune_type set value "luminous"
execute if items block ~ ~ ~ container.11 *[custom_data~{hearty_rune:1b}] run data modify storage rotp:temp current_rune_type set value "hearty"
execute if items block ~ ~ ~ container.11 *[custom_data~{swift_rune:1b}] run data modify storage rotp:temp current_rune_type set value "swift"
execute if items block ~ ~ ~ container.11 *[custom_data~{fortified_rune:1b}] run data modify storage rotp:temp current_rune_type set value "fortified"
execute if items block ~ ~ ~ container.11 *[custom_data~{blazing_rune:1b}] run data modify storage rotp:temp current_rune_type set value "blazing"
execute if items block ~ ~ ~ container.11 *[custom_data~{shadowy_rune:1b}] run data modify storage rotp:temp current_rune_type set value "shadowy"
execute if items block ~ ~ ~ container.11 *[custom_data~{venomous_rune:1b}] run data modify storage rotp:temp current_rune_type set value "venomous"
execute if items block ~ ~ ~ container.11 *[custom_data~{thunderous_rune:1b}] run data modify storage rotp:temp current_rune_type set value "thunderous"
execute if items block ~ ~ ~ container.11 *[custom_data~{earthen_rune:1b}] run data modify storage rotp:temp current_rune_type set value "earthen"
execute if items block ~ ~ ~ container.11 *[custom_data~{aquatic_rune:1b}] run data modify storage rotp:temp current_rune_type set value "aquatic"
execute if items block ~ ~ ~ container.11 *[custom_data~{vampiric_rune:1b}] run data modify storage rotp:temp current_rune_type set value "vampiric"
execute if items block ~ ~ ~ container.11 *[custom_data~{berserker_rune:1b}] run data modify storage rotp:temp current_rune_type set value "berserker"

function rotp:active/rune_table/get_rune_cost

tellraw @a[distance=..5] [{"text":"Rune cost: ","color":"yellow"},{"score":{"name":"#required_levels","objective":"temp"},"color":"white"},{"text":" levels","color":"yellow"}]

item modify block ~ ~ ~ container.4 {function:set_count,count:-1,add:true}
item modify block ~ ~ ~ container.11 {function:set_count,count:-1,add:true}

execute store result score #current_points temp run data get block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".stored_points

tellraw @a[distance=..5] [{"text":"Transcriber has: ","color":"aqua"},{"score":{"name":"#current_points","objective":"temp"},"color":"white"},{"text":" points","color":"aqua"}]

scoreboard players operation #target_level temp = #required_levels temp
function rotp:transcriber/conversion/levels_to_points
scoreboard players operation #required_points temp = #output_points temp

tellraw @a[distance=..5] [{"text":"Need: ","color":"red"},{"score":{"name":"#required_points","objective":"temp"},"color":"white"},{"text":" points","color":"red"}]

scoreboard players operation #current_points temp -= #required_points temp

tellraw @a[distance=..5] [{"text":"After consuming: ","color":"green"},{"score":{"name":"#current_points","objective":"temp"},"color":"white"},{"text":" points","color":"green"}]

execute store result storage rotp:temp new_points int 1 run scoreboard players get #current_points temp
function rotp:active/rune_table/update_transcriber_points with storage rotp:temp

scoreboard players reset #current_points temp
scoreboard players reset #required_points temp
scoreboard players reset #required_levels temp