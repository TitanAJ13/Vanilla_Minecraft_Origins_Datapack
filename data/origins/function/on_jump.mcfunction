tag @s add Jumped
scoreboard players reset @s originsJumped
advancement revoke @s only origins:general/jumped
function #origins:uses_jump_detection with entity @s