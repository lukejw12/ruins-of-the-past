execute if block ~ ~ ~ furnace[facing=south] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=south]
execute if block ~ ~ ~ furnace[facing=north] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=north]
execute if block ~ ~ ~ furnace[facing=east] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=east]
execute if block ~ ~ ~ furnace[facing=west] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=west]
execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,distance=..1,tag=rune_table] run summon marker ~ ~ ~ {Tags:["rune_table"]}