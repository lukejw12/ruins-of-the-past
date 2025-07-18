$item modify block ~ ~ ~ container.15 {\
  function:"set_components",\
  components:{\
    "minecraft:lore":[\
      {text:"Experience Levels Stored",color:"gray",italic:false},\
      {text:"$(new_levels)/150",color:"green",italic:false}\
    ],\
    "minecraft:custom_data":{\
      transcriber:true,\
      stored_levels:$(new_levels),\
      max_levels:150\
    }\
  }\
}