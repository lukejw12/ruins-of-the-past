execute if items entity @s armor.head *[custom_data~{rune_result:1b}] run function rotp:rune_effects/check_helmet_runes
execute if items entity @s armor.chest *[custom_data~{rune_result:1b}] run function rotp:rune_effects/check_chest_runes
execute if items entity @s armor.legs *[custom_data~{rune_result:1b}] run function rotp:rune_effects/check_legs_runes
execute if items entity @s armor.feet *[custom_data~{rune_result:1b}] run function rotp:rune_effects/check_feet_runes

execute if items entity @s weapon.mainhand *[custom_data~{rune_result:1b}] run function rotp:rune_effects/check_weapon_runes
execute if items entity @s weapon.offhand *[custom_data~{rune_result:1b}] run function rotp:rune_effects/check_weapon_runes_offhand