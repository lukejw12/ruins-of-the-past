data modify storage rotp:temp input_item set from block ~ ~ ~ Items[{Slot:4b}]

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

function rotp:active/rune_table/check_compatibility

execute if score #compatible temp matches 1 run function rotp:active/rune_table/create_enhanced_item
execute unless score #compatible temp matches 1 run scoreboard players set @s incompatible 1

scoreboard players reset #compatible temp