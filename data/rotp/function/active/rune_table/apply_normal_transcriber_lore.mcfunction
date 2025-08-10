$item modify block ~ ~ ~ container.15 {\
  function:"set_components",\
  components:{\
    "minecraft:lore":[\
      {text:"   ",italic:false},\
      {text:"Can Hold:",color:"gray",italic:false},\
      {text:"80000 XP",color:"blue",italic:false},\
      {text:"Contains:",color:"gray",italic:false},\
      {text:"$(stored_points) XP",color:"blue",italic:false}\
    ],\
    "minecraft:custom_data":{\
      transcriber:true,\
      stored_points:$(stored_points),\
      max_points:80000\
    }\
  }\
}