advancement revoke @s only rotp:transcriber_used

execute if entity @s[predicate=rotp:sneaking] run function rotp:transcriber/retrieve_experience
execute unless entity @s[predicate=rotp:sneaking] run function rotp:transcriber/store_experience