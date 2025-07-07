
#Trash(90%), Common(70%), Uncommon(30%), Rare(20%), Epic(15%), Legendary(5%), Exquisite(0.5%)
execute store result score #rarity_roll temp run random value 1..1000

$execute if score #rarity_roll temp matches 1..5 run item replace block ~ ~ ~ container.$(slot) with stone[item_name={font:"illageralt",color:"#FFD700",obfuscated:true,text:"Exquisite"},custom_data={discovery_result:1b,discovery_level:3,discovery_rarity:"exquisite",final_reward:1b}]
$execute if score #rarity_roll temp matches 6..55 run item replace block ~ ~ ~ container.$(slot) with stone[item_name={font:"illageralt",color:"#FF6600",obfuscated:true,text:"Legendary"},custom_data={discovery_result:1b,discovery_level:3,discovery_rarity:"legendary",final_reward:1b}]
$execute if score #rarity_roll temp matches 56..205 run item replace block ~ ~ ~ container.$(slot) with stone[item_name={font:"illageralt",color:"#9966FF",obfuscated:true,text:"Epic"},custom_data={discovery_result:1b,discovery_level:3,discovery_rarity:"epic",final_reward:1b}]
$execute if score #rarity_roll temp matches 206..405 run item replace block ~ ~ ~ container.$(slot) with stone[item_name={font:"illageralt",color:"#0099FF",obfuscated:true,text:"Rare"},custom_data={discovery_result:1b,discovery_level:3,discovery_rarity:"rare",final_reward:1b}]
$execute if score #rarity_roll temp matches 406..705 run item replace block ~ ~ ~ container.$(slot) with stone[item_name={font:"illageralt",color:"#00FF00",obfuscated:true,text:"Uncommon"},custom_data={discovery_result:1b,discovery_level:3,discovery_rarity:"uncommon",final_reward:1b}]
$execute if score #rarity_roll temp matches 706..900 run item replace block ~ ~ ~ container.$(slot) with stone[item_name={font:"illageralt",color:"#FFFFFF",obfuscated:true,text:"Common"},custom_data={discovery_result:1b,discovery_level:3,discovery_rarity:"common",final_reward:1b}]
$execute if score #rarity_roll temp matches 901..1000 run item replace block ~ ~ ~ container.$(slot) with stone[item_name={font:"illageralt",color:"#808080",obfuscated:true,text:"Trash"},custom_data={discovery_result:1b,discovery_level:3,discovery_rarity:"trash",final_reward:1b}]

scoreboard players reset #rarity_roll temp