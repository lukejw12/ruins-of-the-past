# Get the required levels for the rune
data modify storage unknown_pack_name:temp current_rune_type set value ""
execute if items block ~ ~ ~ container.11 *[custom_data~{luminous_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "luminous"
execute if items block ~ ~ ~ container.11 *[custom_data~{hearty_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "hearty"
execute if items block ~ ~ ~ container.11 *[custom_data~{swift_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "swift"
execute if items block ~ ~ ~ container.11 *[custom_data~{fortified_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "fortified"
execute if items block ~ ~ ~ container.11 *[custom_data~{blazing_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "blazing"
execute if items block ~ ~ ~ container.11 *[custom_data~{shadowy_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "shadowy"
execute if items block ~ ~ ~ container.11 *[custom_data~{venomous_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "venomous"
execute if items block ~ ~ ~ container.11 *[custom_data~{thunderous_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "thunderous"
execute if items block ~ ~ ~ container.11 *[custom_data~{earthen_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "earthen"
execute if items block ~ ~ ~ container.11 *[custom_data~{aquatic_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "aquatic"
execute if items block ~ ~ ~ container.11 *[custom_data~{vampiric_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "vampiric"
execute if items block ~ ~ ~ container.11 *[custom_data~{berserker_rune:1b}] run data modify storage unknown_pack_name:temp current_rune_type set value "berserker"

function unknown_pack_name:active/rune_table/get_rune_cost

# Consume the input item (slot 4)
item modify block ~ ~ ~ container.4 {function:set_count,count:-1,add:true}

# Consume the rune
item modify block ~ ~ ~ container.11 {function:set_count,count:-1,add:true}

# Update transcriber levels
execute store result score #current_levels temp run data get block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".stored_levels
scoreboard players operation #current_levels temp -= #required_levels temp
execute store result storage unknown_pack_name:temp new_levels int 1 run scoreboard players get #current_levels temp

function unknown_pack_name:active/rune_table/update_transcriber_levels with storage unknown_pack_name:temp

scoreboard players reset #current_levels temp
scoreboard players reset #required_levels temp