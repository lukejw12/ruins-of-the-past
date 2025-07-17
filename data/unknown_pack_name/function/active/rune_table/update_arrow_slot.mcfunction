# Get rune data and calculate required levels
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

# Get input item for compatibility check
data modify storage unknown_pack_name:temp input_item set from block ~ ~ ~ Items[{Slot:4b}]

# Check compatibility first
function unknown_pack_name:active/rune_table/check_compatibility

# If not compatible, show invalid arrow
$execute unless score #compatible temp matches 1 run function unknown_pack_name:active/rune_table/show_incompatible_arrow {slot:$(slot)}
execute unless score #compatible temp matches 1 run scoreboard players reset #compatible temp
execute unless score #compatible temp matches 1 run return 0

# If compatible, continue with level checks
execute store result score #transcriber_levels temp run data get block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".stored_levels

function unknown_pack_name:active/rune_table/get_rune_cost

$execute if score #transcriber_levels temp >= #required_levels temp run function unknown_pack_name:active/rune_table/show_sufficient_arrow {slot:$(slot)}
$execute if score #transcriber_levels temp < #required_levels temp run function unknown_pack_name:active/rune_table/show_insufficient_arrow {slot:$(slot)}

scoreboard players reset #transcriber_levels temp
scoreboard players reset #required_levels temp
scoreboard players reset #compatible temp