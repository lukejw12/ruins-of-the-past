data modify storage unknown_pack_name:temp rotated_pot_data set from storage unknown_pack_name:temp pot_data
data modify storage unknown_pack_name:temp rotated_pot_data.east_material set from storage unknown_pack_name:temp pot_data.south_material
data modify storage unknown_pack_name:temp rotated_pot_data.south_material set from storage unknown_pack_name:temp pot_data.west_material
data modify storage unknown_pack_name:temp rotated_pot_data.west_material set from storage unknown_pack_name:temp pot_data.north_material
data modify storage unknown_pack_name:temp rotated_pot_data.north_material set from storage unknown_pack_name:temp pot_data.east_material
data modify storage unknown_pack_name:temp pot_data set from storage unknown_pack_name:temp rotated_pot_data