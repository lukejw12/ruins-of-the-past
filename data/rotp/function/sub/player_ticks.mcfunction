execute if predicate rotp:runes run function rotp:rune_effects/check_player_runes
function rotp:core/block/placed/pedestal/tick
execute if items entity @s weapon.offhand *[custom_data~{transcriber:true}] run function rotp:transcriber/offhand_tick
execute if items entity @s weapon.offhand *[custom_data~{transcriber:true}] unless data entity @s equipment.offhand.components."minecraft:custom_data".stored_points run function rotp:transcriber/initialize_offhand_transcriber
execute as @e[type=interaction,distance=..10] at @s run function rotp:sub/interaction_tick
execute as @e[type=marker,distance=..20] at @s run function rotp:sub/entity_ticks
execute if predicate rotp:held_item/table run scoreboard players set @s item_being_held 1
execute if predicate rotp:held_item/pot run scoreboard players set @s item_being_held 2
execute if predicate rotp:gui_invalid run function rotp:sub/item_clear/check_slot
execute unless predicate rotp:held_item/table unless predicate rotp:held_item/pot run scoreboard players set @s item_being_held 0
scoreboard players enable @s dynamic_lighting
function rotp:sub/dynamic_lighting_tick
execute as @e[type=item_display,distance=..40,tag=!needs_id] at @s unless block ~ ~ ~ barrel run function rotp:sub/display_ticks
