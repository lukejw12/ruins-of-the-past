
# Rune subtypes
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"hearty"} run data modify storage unknown_pack_name:discovery subtype set value "hearty"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"venomous"} run data modify storage unknown_pack_name:discovery subtype set value "venomous"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"swift"} run data modify storage unknown_pack_name:discovery subtype set value "swift"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"fortified"} run data modify storage unknown_pack_name:discovery subtype set value "fortified"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"arcane"} run data modify storage unknown_pack_name:discovery subtype set value "arcane"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"blazing"} run data modify storage unknown_pack_name:discovery subtype set value "blazing"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"frozen"} run data modify storage unknown_pack_name:discovery subtype set value "frozen"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"shadowy"} run data modify storage unknown_pack_name:discovery subtype set value "shadowy"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"luminous"} run data modify storage unknown_pack_name:discovery subtype set value "luminous"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"thunderous"} run data modify storage unknown_pack_name:discovery subtype set value "thunderous"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"earthen"} run data modify storage unknown_pack_name:discovery subtype set value "earthen"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"aquatic"} run data modify storage unknown_pack_name:discovery subtype set value "aquatic"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"windswept"} run data modify storage unknown_pack_name:discovery subtype set value "windswept"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"vampiric"} run data modify storage unknown_pack_name:discovery subtype set value "vampiric"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"berserker"} run data modify storage unknown_pack_name:discovery subtype set value "berserker"

# Accessory subtypes
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"amulet_of_strength"} run data modify storage unknown_pack_name:discovery subtype set value "amulet_of_strength"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"ring_of_fortune"} run data modify storage unknown_pack_name:discovery subtype set value "ring_of_fortune"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"pendant_of_wisdom"} run data modify storage unknown_pack_name:discovery subtype set value "pendant_of_wisdom"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"bracelet_of_dexterity"} run data modify storage unknown_pack_name:discovery subtype set value "bracelet_of_dexterity"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"circlet_of_focus"} run data modify storage unknown_pack_name:discovery subtype set value "circlet_of_focus"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"talisman_of_warding"} run data modify storage unknown_pack_name:discovery subtype set value "talisman_of_warding"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"medallion_of_valor"} run data modify storage unknown_pack_name:discovery subtype set value "medallion_of_valor"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"charm_of_prosperity"} run data modify storage unknown_pack_name:discovery subtype set value "charm_of_prosperity"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"sigil_of_protection"} run data modify storage unknown_pack_name:discovery subtype set value "sigil_of_protection"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"totem_of_resilience"} run data modify storage unknown_pack_name:discovery subtype set value "totem_of_resilience"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"emblem_of_power"} run data modify storage unknown_pack_name:discovery subtype set value "emblem_of_power"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"relic_of_ancient_kings"} run data modify storage unknown_pack_name:discovery subtype set value "relic_of_ancient_kings"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"shard_of_eternal_light"} run data modify storage unknown_pack_name:discovery subtype set value "shard_of_eternal_light"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"crystal_of_pure_energy"} run data modify storage unknown_pack_name:discovery subtype set value "crystal_of_pure_energy"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"orb_of_mystical_forces"} run data modify storage unknown_pack_name:discovery subtype set value "orb_of_mystical_forces"

# Dig site subtypes - these are final rewards (no level 3)
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"desert_ruins"} run data modify storage unknown_pack_name:discovery subtype set value "desert_ruins"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"oasis_temple"} run data modify storage unknown_pack_name:discovery subtype set value "oasis_temple"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"ancient_tomb"} run data modify storage unknown_pack_name:discovery subtype set value "ancient_tomb"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"buried_city"} run data modify storage unknown_pack_name:discovery subtype set value "buried_city"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"forgotten_shrine"} run data modify storage unknown_pack_name:discovery subtype set value "forgotten_shrine"
execute if data storage unknown_pack_name:discovery selected{discovery_subtype:"lost_pyramid"} run data modify storage unknown_pack_name:discovery subtype set value "lost_pyramid"

execute if data storage unknown_pack_name:discovery {type:"dig_site"} run function unknown_pack_name:active/table/discovery/generate_final_reward
execute unless data storage unknown_pack_name:discovery {type:"dig_site"} unless data storage unknown_pack_name:discovery selected{discovery_subtype:"unknown"} run function unknown_pack_name:active/table/discovery/advance_to_level3



execute if data storage unknown_pack_name:discovery selected{final_reward:1b} run function unknown_pack_name:active/table/discovery/generate_final_reward
execute unless data storage unknown_pack_name:discovery selected{final_reward:1b} unless data storage unknown_pack_name:discovery selected{discovery_subtype:"unknown"} run function unknown_pack_name:active/table/discovery/advance_to_level3

function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results