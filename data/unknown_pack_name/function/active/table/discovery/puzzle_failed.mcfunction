item replace block ~ ~ ~ container.10 with air
function unknown_pack_name:active/table/recipes/ancient_tablet_clear_results
data remove storage unknown_pack_name:discovery type
data remove storage unknown_pack_name:discovery target_word
data remove storage unknown_pack_name:discovery grid_words
data remove storage unknown_pack_name:discovery puzzle_active

tellraw @p [{"text":"The ancient tablet crumbles to dust as your final guess proves incorrect...","color":"red","italic":true}]