$execute store result score #new_points_score temp run scoreboard players set #temp temp $(new_points)

$item modify block ~ ~ ~ container.15 {\
  function:"set_components",\
  components:{\
    "minecraft:custom_data":{\
      transcriber:true,\
      stored_points:$(new_points),\
      max_points:79095\
    }\
  }\
}

scoreboard players operation #input_points temp = #new_points_score temp
function rotp:transcriber/conversion/points_to_levels
execute store result score #display_levels temp run scoreboard players get #output_levels temp

execute store result storage rotp:temp stored_points int 1 run scoreboard players get #new_points_score temp
execute store result storage rotp:temp display_levels int 1 run scoreboard players get #display_levels temp

function rotp:active/rune_table/apply_normal_transcriber_lore with storage rotp:temp

scoreboard players reset #new_points_score temp
scoreboard players reset #display_levels temp