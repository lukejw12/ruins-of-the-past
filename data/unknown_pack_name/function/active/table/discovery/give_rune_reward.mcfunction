# Set rune data based on subtype
execute if data storage unknown_pack_name:discovery {subtype:"hearty"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Hearty",rune_type:"hearty",equipment_type:"Armor",equipment_slot:"armor"}
execute if data storage unknown_pack_name:discovery {subtype:"venomous"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Venomous",rune_type:"venomous",equipment_type:"Weapons",equipment_slot:"weapon"}
execute if data storage unknown_pack_name:discovery {subtype:"swift"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Swift",rune_type:"swift",equipment_type:"Boots",equipment_slot:"feet"}
execute if data storage unknown_pack_name:discovery {subtype:"fortified"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Fortified",rune_type:"fortified",equipment_type:"Armor",equipment_slot:"armor"}
execute if data storage unknown_pack_name:discovery {subtype:"blazing"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Blazing",rune_type:"blazing",equipment_type:"Shields",equipment_slot:"offhand"}
execute if data storage unknown_pack_name:discovery {subtype:"shadowy"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Shadowy",rune_type:"shadowy",equipment_type:"Helmets",equipment_slot:"head"}
execute if data storage unknown_pack_name:discovery {subtype:"luminous"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Luminous",rune_type:"luminous",equipment_type:"Helmets",equipment_slot:"head"}
execute if data storage unknown_pack_name:discovery {subtype:"thunderous"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Thunderous",rune_type:"thunderous",equipment_type:"Swords",equipment_slot:"mainhand"}
execute if data storage unknown_pack_name:discovery {subtype:"earthen"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Earthen",rune_type:"earthen",equipment_type:"Helmets & Swords",equipment_slot:"any"}
execute if data storage unknown_pack_name:discovery {subtype:"aquatic"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Aquatic",rune_type:"aquatic",equipment_type:"Helmets",equipment_slot:"head"}
execute if data storage unknown_pack_name:discovery {subtype:"vampiric"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Vampiric",rune_type:"vampiric",equipment_type:"Swords & Axes",equipment_slot:"weapon"}
execute if data storage unknown_pack_name:discovery {subtype:"berserker"} run data modify storage unknown_pack_name:temp rune_data set value {rune_name:"Berserker",rune_type:"berserker",equipment_type:"Armor",equipment_slot:"armor"}

# Give the rune using macro
function unknown_pack_name:active/table/discovery/runes/give_rune with storage unknown_pack_name:temp rune_data