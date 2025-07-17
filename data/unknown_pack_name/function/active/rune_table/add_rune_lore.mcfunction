# Add blank space first, then rune effect to lore based on rune type - ALL BLUE stats
execute if data storage unknown_pack_name:temp {current_rune_type:"hearty"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"hearty"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Hearty Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"hearty"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"+1 HP",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"swift"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"swift"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Swift Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"swift"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"+5% Speed",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"venomous"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"venomous"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Venomous Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"venomous"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Poison on Hit",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"luminous"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"luminous"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Luminous Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"luminous"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Night Vision",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"fortified"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"fortified"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Fortified Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"fortified"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"+10% Armor Toughness",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"berserker"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"berserker"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Berserker Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"berserker"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"+10% Armor",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"blazing"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"blazing"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Blazing Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"blazing"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"-20% Burn Time",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"shadowy"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"shadowy"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Shadowy Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"shadowy"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Darkness Immunity",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"thunderous"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"thunderous"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Thunderous Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"thunderous"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Lightning Chance",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"earthen"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"earthen"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Earthen Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"earthen"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"+0.7 Step Height",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"aquatic"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"aquatic"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Aquatic Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"aquatic"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"+10 Oxygen",color:"blue",italic:false}

execute if data storage unknown_pack_name:temp {current_rune_type:"vampiric"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"",color:"white",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"vampiric"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"Vampiric Rune:",color:"gray",italic:false}
execute if data storage unknown_pack_name:temp {current_rune_type:"vampiric"} run data modify storage unknown_pack_name:temp enhanced_item.components."minecraft:lore" append value {text:"9% Heal Chance",color:"blue",italic:false}