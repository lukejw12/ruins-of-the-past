$item modify entity @s weapon.mainhand {\
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