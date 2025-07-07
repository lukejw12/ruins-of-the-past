
execute if data storage unknown_pack_name:discovery selected{discovery_type:"rune"} run data modify storage unknown_pack_name:discovery type set value "rune"
execute if data storage unknown_pack_name:discovery selected{discovery_type:"accessory"} run data modify storage unknown_pack_name:discovery type set value "accessory"
execute if data storage unknown_pack_name:discovery selected{discovery_type:"dig_site"} run data modify storage unknown_pack_name:discovery type set value "dig_site"

function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results

execute unless data storage unknown_pack_name:discovery selected{discovery_type:"unknown"} run function unknown_pack_name:active/table/discovery/advance_to_level2
