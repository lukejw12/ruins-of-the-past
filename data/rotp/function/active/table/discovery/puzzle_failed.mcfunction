
item replace block ~ ~ ~ container.10 with air
function rotp:active/table/recipes/ancient_tablet_clear_results
data remove storage rotp:discovery type
data remove storage rotp:discovery target_word
data remove storage rotp:discovery grid_words
data remove storage rotp:discovery puzzle_active

function rotp:active/table/discovery/clear_player_word_tag

title @p actionbar [{"text":"The ancient tablet crumbles to dust as your final guess proves incorrect...","color":"red","italic":true}]