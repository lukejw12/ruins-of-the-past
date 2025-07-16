advancement revoke @s only unknown_pack_name:transcriber_used

execute if entity @s[predicate=unknown_pack_name:sneaking] run function unknown_pack_name:transcriber/retrieve_experience
execute unless entity @s[predicate=unknown_pack_name:sneaking] run function unknown_pack_name:transcriber/store_experience
