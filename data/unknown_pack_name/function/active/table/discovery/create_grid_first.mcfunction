data modify storage unknown_pack_name:discovery grid_words set value []
data modify storage unknown_pack_name:temp word_pool set value []
data modify storage unknown_pack_name:temp word_pool append from storage unknown_pack_name:word_banks runes[]
data modify storage unknown_pack_name:temp word_pool append from storage unknown_pack_name:word_banks dig_site[]
scoreboard players set #words_added temp 0
function unknown_pack_name:active/table/discovery/add_random_word_loop