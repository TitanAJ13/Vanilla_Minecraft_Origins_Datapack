execute unless predicate origins:in_water_type run return 0
execute if predicate origins:in_water_type store result score @s originsPosY run data get entity @s Pos[1] 1000
scoreboard players operation @s originsHeightInBlock = @s originsPosY
scoreboard players operation @s originsHeightInBlock %= 1000 originsConstant
execute if block ~ ~ ~ #origins:waterloggable run scoreboard players set @s originsWaterTypeMax 8
execute if block ~ ~ ~ water run scoreboard players set @s originsWaterTypeMax 8
execute if block ~ ~ ~ water[level=1] run scoreboard players set @s originsWaterTypeMax 7
execute if block ~ ~ ~ water[level=2] run scoreboard players set @s originsWaterTypeMax 6
execute if block ~ ~ ~ water[level=3] run scoreboard players set @s originsWaterTypeMax 5
execute if block ~ ~ ~ water[level=4] run scoreboard players set @s originsWaterTypeMax 4
execute if block ~ ~ ~ water[level=5] run scoreboard players set @s originsWaterTypeMax 3
execute if block ~ ~ ~ water[level=6] run scoreboard players set @s originsWaterTypeMax 2
execute if block ~ ~ ~ water[level=7] run scoreboard players set @s originsWaterTypeMax 1
execute if predicate origins:height_check run return 1
execute if score @s originsHeightInBlock matches 888..999 positioned ~ ~1 ~ if predicate origins:in_water_type run return 1
return 0