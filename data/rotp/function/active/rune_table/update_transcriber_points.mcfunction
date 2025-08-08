$scoreboard players set #stored_points temp $(new_points)

scoreboard players operation #input_points temp = #stored_points temp
function rotp:transcriber/conversion/points_to_levels
scoreboard players operation #display_levels temp = #output_levels temp

execute store result storage rotp:temp display_levels int 1 run scoreboard players get #display_levels temp
execute store result storage rotp:temp stored_points int 1 run scoreboard players get #stored_points temp

$item modify block ~ ~ ~ container.15 {\
  function:"set_components",\
  components:{\
    "minecraft:lore":[\
      {text:"Experience Points Stored",color:"gray",italic:false},\
      {text:"$(stored_points) XP (≈$(display_levels) levels)",color:"green",italic:false},\
      {text:"Capacity: 79095 XP (150 levels)",color:"dark_gray",italic:false}\
    ],\
    "minecraft:custom_data":{\
      transcriber:true,\
      stored_points:$(stored_points),\
      max_points:79095\
    }\
  }\
}

scoreboard players reset #stored_points temp
scoreboard players reset #display_levels temp