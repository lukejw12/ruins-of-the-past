$tellraw @s {"text":"Debug: About to give $(give_points) points","color":"yellow"}
$experience add @s $(give_points) points
$tellraw @s {"text":"Debug: Gave $(give_points) points","color":"green"}