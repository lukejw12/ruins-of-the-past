execute if block ~ ~ ~ loom[facing=south] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=south]
execute if block ~ ~ ~ loom[facing=north] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=north]
execute if block ~ ~ ~ loom[facing=east] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=east]
execute if block ~ ~ ~ loom[facing=west] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=west]

execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,distance=..1,tag=test] run summon marker ~ ~ ~ {Tags:["table"]}
