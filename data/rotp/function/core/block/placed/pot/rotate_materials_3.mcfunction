data modify storage rotp:temp rotated_pot_data set from storage rotp:temp pot_data
data modify storage rotp:temp rotated_pot_data.east_material set from storage rotp:temp pot_data.south_material
data modify storage rotp:temp rotated_pot_data.south_material set from storage rotp:temp pot_data.west_material
data modify storage rotp:temp rotated_pot_data.west_material set from storage rotp:temp pot_data.north_material
data modify storage rotp:temp rotated_pot_data.north_material set from storage rotp:temp pot_data.east_material
data modify storage rotp:temp pot_data set from storage rotp:temp rotated_pot_data