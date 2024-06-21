scoreboard players operation @s originsPosition2 = @s originsPosition1
execute store result score @s originsPosition1 run data get entity @s Pos[1] 10000
scoreboard players operation @s originsPosition2 -= @s originsPosition1
scoreboard players operation @s originsPosition2 *= -1 originsConstant

scoreboard players operation @s originsVelocity2 = @s originsVelocity1
scoreboard players operation @s originsVelocity1 = @s originsPosition2
scoreboard players operation @s originsVelocity2 -= @s originsVelocity1
scoreboard players operation @s originsVelocity2 *= -1 originsConstant

scoreboard players operation @s originsAcceleration = @s originsVelocity2