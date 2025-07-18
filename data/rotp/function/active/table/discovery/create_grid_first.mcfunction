data modify storage rotp:discovery grid_words set value []
data modify storage rotp:temp word_pool set value []
data modify storage rotp:temp word_pool append from storage rotp:word_banks runes[]
data modify storage rotp:temp word_pool append from storage rotp:word_banks dig_site[]
scoreboard players set #words_added temp 0
function rotp:active/table/discovery/add_random_word_loop