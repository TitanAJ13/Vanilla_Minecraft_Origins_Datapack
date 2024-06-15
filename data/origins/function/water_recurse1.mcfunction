$execute at @s run tp @s ~$(DeltaX) ~ ~$(DeltaZ)
function origins:water_recurse2
execute if score @s originsInWater matches 1 run return 1
$tp @s[tag=Top] ~$(DeltaX) ~$(DeltaY) ~$(DeltaZ)
execute as @s[tag=Top] store result score @s originsInWaterState at @s run function origins:point_in_water
tag @s[tag=Top] remove Top
return run scoreboard players get @s originsInWaterState