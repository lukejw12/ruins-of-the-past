
execute if data storage rotp:discovery selected{discovery_type:"rune"} run data modify storage rotp:discovery type set value "rune"
execute if data storage rotp:discovery selected{discovery_type:"accessory"} run data modify storage rotp:discovery type set value "accessory"
execute if data storage rotp:discovery selected{discovery_type:"dig_site"} run data modify storage rotp:discovery type set value "dig_site"

function rotp:active/table/recipes/ancient_tablet_clear_results

execute unless data storage rotp:discovery selected{discovery_type:"unknown"} run function rotp:active/table/discovery/advance_to_level2
