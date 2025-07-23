execute unless data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_pattern_panel {direction:south,material_key:south_material,rotation:"[0f,0f,0f,1f]"}
execute unless data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_pattern_panel {direction:north,material_key:north_material,rotation:"[0f,1f,0f,0f]"}
execute unless data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_pattern_panel {direction:west,material_key:west_material,rotation:"[0f,-0.707f,0f,0.707f]"}
execute unless data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_pattern_panel {direction:east,material_key:east_material,rotation:"[0f,0.707f,0f,0.707f]"}

execute if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pattern_panel {direction:south,material_key:south_material,rotation:"[0f,0f,0f,1f]"}
execute if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pattern_panel {direction:north,material_key:north_material,rotation:"[0f,1f,0f,0f]"}
execute if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pattern_panel {direction:west,material_key:west_material,rotation:"[0f,-0.707f,0f,0.707f]"}
execute if data storage rotp:temp pot_data.dyed run function rotp:core/block/placed/pot/spawn_dyed_pattern_panel {direction:east,material_key:east_material,rotation:"[0f,0.707f,0f,0.707f]"}