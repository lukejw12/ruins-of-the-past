
function rotp:active/table/discovery/create_grid_first
execute store result score #target_grid_index temp run random value 0..11

execute if score #target_grid_index temp matches 0 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[0]
execute if score #target_grid_index temp matches 1 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[1]
execute if score #target_grid_index temp matches 2 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[2]
execute if score #target_grid_index temp matches 3 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[3]
execute if score #target_grid_index temp matches 4 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[4]
execute if score #target_grid_index temp matches 5 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[5]
execute if score #target_grid_index temp matches 6 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[6]
execute if score #target_grid_index temp matches 7 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[7]
execute if score #target_grid_index temp matches 8 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[8]
execute if score #target_grid_index temp matches 9 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[9]
execute if score #target_grid_index temp matches 10 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[10]
execute if score #target_grid_index temp matches 11 run data modify storage rotp:discovery target_word set from storage rotp:discovery grid_words[11]

execute if data storage rotp:discovery {target_word:"runic"} run tag @p[distance=..10] add rotp.word.runic
execute if data storage rotp:discovery {target_word:"enhancement"} run tag @p[distance=..10] add rotp.word.enhancement
execute if data storage rotp:discovery {target_word:"mystical"} run tag @p[distance=..10] add rotp.word.mystical
execute if data storage rotp:discovery {target_word:"powerful"} run tag @p[distance=..10] add rotp.word.powerful
execute if data storage rotp:discovery {target_word:"arcane"} run tag @p[distance=..10] add rotp.word.arcane
execute if data storage rotp:discovery {target_word:"enchant"} run tag @p[distance=..10] add rotp.word.enchant
execute if data storage rotp:discovery {target_word:"magic"} run tag @p[distance=..10] add rotp.word.magic
execute if data storage rotp:discovery {target_word:"spell"} run tag @p[distance=..10] add rotp.word.spell
execute if data storage rotp:discovery {target_word:"dig"} run tag @p[distance=..10] add rotp.word.dig
execute if data storage rotp:discovery {target_word:"excavate"} run tag @p[distance=..10] add rotp.word.excavate
execute if data storage rotp:discovery {target_word:"fossil"} run tag @p[distance=..10] add rotp.word.fossil
execute if data storage rotp:discovery {target_word:"discover"} run tag @p[distance=..10] add rotp.word.discover
execute if data storage rotp:discovery {target_word:"unearth"} run tag @p[distance=..10] add rotp.word.unearth
execute if data storage rotp:discovery {target_word:"buried"} run tag @p[distance=..10] add rotp.word.buried
execute if data storage rotp:discovery {target_word:"ancient"} run tag @p[distance=..10] add rotp.word.ancient
execute if data storage rotp:discovery {target_word:"ruins"} run tag @p[distance=..10] add rotp.word.ruins

scoreboard players reset #target_grid_index temp