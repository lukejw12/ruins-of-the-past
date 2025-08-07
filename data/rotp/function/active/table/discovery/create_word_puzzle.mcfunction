
execute unless entity @p[distance=..10,tag=rotp.word.runic] unless entity @p[distance=..10,tag=rotp.word.enhancement] unless entity @p[distance=..10,tag=rotp.word.mystical] unless entity @p[distance=..10,tag=rotp.word.powerful] unless entity @p[distance=..10,tag=rotp.word.arcane] unless entity @p[distance=..10,tag=rotp.word.enchant] unless entity @p[distance=..10,tag=rotp.word.magic] unless entity @p[distance=..10,tag=rotp.word.spell] unless entity @p[distance=..10,tag=rotp.word.dig] unless entity @p[distance=..10,tag=rotp.word.excavate] unless entity @p[distance=..10,tag=rotp.word.fossil] unless entity @p[distance=..10,tag=rotp.word.discover] unless entity @p[distance=..10,tag=rotp.word.unearth] unless entity @p[distance=..10,tag=rotp.word.buried] unless entity @p[distance=..10,tag=rotp.word.ancient] unless entity @p[distance=..10,tag=rotp.word.ruins] run function rotp:active/table/discovery/assign_random_word

execute if entity @p[distance=..10,tag=rotp.word.runic] run data modify storage rotp:discovery target_word set value "runic"
execute if entity @p[distance=..10,tag=rotp.word.enhancement] run data modify storage rotp:discovery target_word set value "enhancement"
execute if entity @p[distance=..10,tag=rotp.word.mystical] run data modify storage rotp:discovery target_word set value "mystical"
execute if entity @p[distance=..10,tag=rotp.word.powerful] run data modify storage rotp:discovery target_word set value "powerful"
execute if entity @p[distance=..10,tag=rotp.word.arcane] run data modify storage rotp:discovery target_word set value "arcane"
execute if entity @p[distance=..10,tag=rotp.word.enchant] run data modify storage rotp:discovery target_word set value "enchant"
execute if entity @p[distance=..10,tag=rotp.word.magic] run data modify storage rotp:discovery target_word set value "magic"
execute if entity @p[distance=..10,tag=rotp.word.spell] run data modify storage rotp:discovery target_word set value "spell"
execute if entity @p[distance=..10,tag=rotp.word.dig] run data modify storage rotp:discovery target_word set value "dig"
execute if entity @p[distance=..10,tag=rotp.word.excavate] run data modify storage rotp:discovery target_word set value "excavate"
execute if entity @p[distance=..10,tag=rotp.word.fossil] run data modify storage rotp:discovery target_word set value "fossil"
execute if entity @p[distance=..10,tag=rotp.word.discover] run data modify storage rotp:discovery target_word set value "discover"
execute if entity @p[distance=..10,tag=rotp.word.unearth] run data modify storage rotp:discovery target_word set value "unearth"
execute if entity @p[distance=..10,tag=rotp.word.buried] run data modify storage rotp:discovery target_word set value "buried"
execute if entity @p[distance=..10,tag=rotp.word.ancient] run data modify storage rotp:discovery target_word set value "ancient"
execute if entity @p[distance=..10,tag=rotp.word.ruins] run data modify storage rotp:discovery target_word set value "ruins"

function rotp:active/table/discovery/create_grid
function rotp:active/table/discovery/determine_type_from_word
function rotp:active/table/discovery/place_words_in_gui