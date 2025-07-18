execute if block ~ ~ ~ smoker[facing=south] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=south]
execute if block ~ ~ ~ smoker[facing=north] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=north]
execute if block ~ ~ ~ smoker[facing=east] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=east]
execute if block ~ ~ ~ smoker[facing=west] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel[facing=west]
execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,distance=..1,tag=pottery_wheel] run summon marker ~ ~ ~ {Tags:["pottery_wheel"]}