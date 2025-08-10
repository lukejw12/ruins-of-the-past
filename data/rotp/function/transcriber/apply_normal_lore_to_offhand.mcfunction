$item modify entity @s weapon.offhand {\
  function:"set_components",\
  components:{\
    "minecraft:lore":[\
      {text:"   ",italic:false},\
      {text:"Can Hold:",color:"gray",italic:false},\
      {text:"80000 XP",color:"blue",italic:false},\
      {text:"Contains:",color:"gray",italic:false},\
      {text:"$(stored_points) XP",color:"blue",italic:false}\
    ]\
  }\
}