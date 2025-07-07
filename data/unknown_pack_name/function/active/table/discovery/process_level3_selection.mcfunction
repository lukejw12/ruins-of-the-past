
execute if data storage unknown_pack_name:discovery selected{discovery_rarity:"exquisite"} run data modify storage unknown_pack_name:discovery rarity set value "exquisite"
execute if data storage unknown_pack_name:discovery selected{discovery_rarity:"legendary"} run data modify storage unknown_pack_name:discovery rarity set value "legendary"
execute if data storage unknown_pack_name:discovery selected{discovery_rarity:"epid"} run data modify storage unknown_pack_name:discovery rarity set value "epic"
execute if data storage unknown_pack_name:discovery selected{discovery_rarity:"rare"} run data modify storage unknown_pack_name:discovery rarity set value "rare"
execute if data storage unknown_pack_name:discovery selected{discovery_rarity:"uncommon"} run data modify storage unknown_pack_name:discovery rarity set value "uncommon"
execute if data storage unknown_pack_name:discovery selected{discovery_rarity:"common"} run data modify storage unknown_pack_name:discovery rarity set value "common"
execute if data storage unknown_pack_name:discovery selected{discovery_rarity:"trash"} run data modify storage unknown_pack_name:discovery rarity set value "trash"

execute unless data storage unknown_pack_name:discovery selected{discovery_rarity:"unknown"} run function unknown_pack_name:active/table/discovery/generate_final_reward

function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results