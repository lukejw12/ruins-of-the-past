
function rotp:active/table/recipes/clear_tablet_slot {location:"hotbar",slot:0}
function rotp:active/table/recipes/clear_tablet_slot {location:"hotbar",slot:1}
function rotp:active/table/recipes/clear_tablet_slot {location:"hotbar",slot:2}
function rotp:active/table/recipes/clear_tablet_slot {location:"hotbar",slot:3}
function rotp:active/table/recipes/clear_tablet_slot {location:"hotbar",slot:4}
function rotp:active/table/recipes/clear_tablet_slot {location:"hotbar",slot:5}
function rotp:active/table/recipes/clear_tablet_slot {location:"hotbar",slot:6}
function rotp:active/table/recipes/clear_tablet_slot {location:"hotbar",slot:7}
function rotp:active/table/recipes/clear_tablet_slot {location:"hotbar",slot:8}

function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:0}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:1}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:2}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:3}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:4}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:5}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:6}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:7}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:8}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:9}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:10}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:11}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:12}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:13}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:14}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:15}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:16}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:17}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:18}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:19}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:20}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:21}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:22}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:23}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:24}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:25}
function rotp:active/table/recipes/clear_tablet_slot {location:"inventory",slot:26}

execute if items entity @p[distance=..10] player.cursor stone[custom_data~{ancient_tablet:1b,discovery_level:1}] run item replace entity @p[distance=..10] player.cursor with air
execute if items entity @p[distance=..10] player.cursor stone[custom_data~{ancient_tablet:1b,discovery_level:2}] run item replace entity @p[distance=..10] player.cursor with air
execute if items entity @p[distance=..10] player.cursor stone[custom_data~{ancient_tablet:1b,discovery_level:3}] run item replace entity @p[distance=..10] player.cursor with air

