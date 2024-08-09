stopsound @s * minecraft:block.portal.travel
$execute in minecraft:overworld run tp @s $(X) $(Y) $(Z)
function origins:to_stored_gamemode
scoreboard players reset oUWS originsConstant
tag @s remove Died