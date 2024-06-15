execute if score @s originsHeight matches 0.. store result score @s originsInWater at @s run function origins:point_in_water
execute if score @s originsHeight matches ..-1 run return run tag @s add Top
execute if score @s originsInWater matches 1 run return 1
scoreboard players remove @s originsHeight 1000
execute as @s at @s run tp ~ ~1 ~
execute as @s at @s run function origins:water_recurse2