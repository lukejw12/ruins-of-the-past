$item modify entity @s weapon.offhand {\
  function:"set_components",\
  components:{\
    "minecraft:custom_data":{\
      transcriber:true,\
      stored_points:$(new_stored_points),\
      max_points:80000\
    }\
  }\
}
$tellraw @s [{"text":"Updated offhand transcriber to: $(new_stored_points) points","color":"green"}]