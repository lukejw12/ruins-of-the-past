scoreboard objectives add item_being_held dummy
scoreboard objectives add temp dummy
scoreboard objectives add chest_opens minecraft.custom:minecraft.open_barrel
scoreboard objectives add level2_delay dummy
scoreboard objectives add puzzle_click_cooldown dummy
scoreboard objectives add puzzle_timer dummy
scoreboard players set #20 temp 20
scoreboard objectives add clean_tablets_next_tick dummy
scoreboard objectives add completion_delay dummy
scoreboard objectives add pot_id dummy
scoreboard objectives add last_result_state dummy
scoreboard objectives add should_consume dummy
scoreboard objectives add has_result dummy

scoreboard objectives add found_target dummy
scoreboard objectives add precision_counter dummy
scoreboard objectives add clicked_slot dummy
scoreboard objectives add clicked_pot_type dummy
scoreboard objectives add player_pot_count dummy
scoreboard objectives add same_type_handled dummy
scoreboard objectives add extra_pots dummy

scoreboard objectives add slot4_count dummy
scoreboard objectives add slot5_count dummy
scoreboard objectives add slot6_count dummy
scoreboard objectives add slot7_count dummy
scoreboard objectives add excess_count dummy
scoreboard objectives add should_check_pot dummy
scoreboard objectives add pot_count dummy
scoreboard objectives add tick_counter dummy
scoreboard objectives add recipe_state dummy
data modify storage rotp:storage_pots temp set value {}
scoreboard objectives add storage_pot_id dummy
scoreboard objectives add stored_count dummy
scoreboard objectives add just_consumed dummy

scoreboard objectives add explosion_timer dummy
data modify storage rotp:linked_storage temp set value {}

scoreboard objectives add system_cleared dummy
scoreboard objectives add incompatible dummy
scoreboard objectives add animation_timer dummy
scoreboard objectives add pottery_wheel_id dummy
scoreboard objectives add altar_id dummy
function rotp:active/rune_table/vanilla_attributes/initialize_data

scoreboard objectives add pedestal_id dummy
scoreboard objectives add nested_pedestal_id dummy
scoreboard objectives add tiny_item_id dummy
scoreboard objectives add table_id dummy

scoreboard objectives add dynamic_lighting trigger
scoreboard objectives add light_level dummy
scoreboard objectives add previous_light dummy
scoreboard objectives add light_update_timer dummy
scoreboard objectives add previous_sky dummy
gamerule commandBlockOutput false
