execute if data storage unknown_pack_name:temp {current_rune_type:"swift"} run scoreboard players set #required_levels temp 30
execute if data storage unknown_pack_name:temp {current_rune_type:"luminous"} run scoreboard players set #required_levels temp 30

execute if data storage unknown_pack_name:temp {current_rune_type:"hearty"} run scoreboard players set #required_levels temp 50
execute if data storage unknown_pack_name:temp {current_rune_type:"fortified"} run scoreboard players set #required_levels temp 50
execute if data storage unknown_pack_name:temp {current_rune_type:"berserker"} run scoreboard players set #required_levels temp 50
execute if data storage unknown_pack_name:temp {current_rune_type:"blazing"} run scoreboard players set #required_levels temp 50
execute if data storage unknown_pack_name:temp {current_rune_type:"shadowy"} run scoreboard players set #required_levels temp 50
execute if data storage unknown_pack_name:temp {current_rune_type:"aquatic"} run scoreboard players set #required_levels temp 50

execute if data storage unknown_pack_name:temp {current_rune_type:"venomous"} run scoreboard players set #required_levels temp 70
execute if data storage unknown_pack_name:temp {current_rune_type:"thunderous"} run scoreboard players set #required_levels temp 70
execute if data storage unknown_pack_name:temp {current_rune_type:"earthen"} run scoreboard players set #required_levels temp 70
execute if data storage unknown_pack_name:temp {current_rune_type:"vampiric"} run scoreboard players set #required_levels temp 70

execute unless score #required_levels temp matches 1.. run scoreboard players set #required_levels temp 50