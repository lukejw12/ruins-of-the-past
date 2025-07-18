$item modify entity @s weapon.mainhand {\
  function:"set_components",\
  components:{\
    "minecraft:lore":[\
      {text:"Experience Levels Stored",color:"gray",italic:false},\
      {text:"$(stored_levels)/150",color:"green",italic:false}\
    ],\
    "minecraft:custom_data":{\
      transcriber:true,\
      stored_levels:$(stored_levels),\
      max_levels:150\
    }\
  }\
}