scoreboard players set @s originsInWaterLow1 0
scoreboard players set @s originsInWaterLow2 0
scoreboard players set @s originsInWaterLow3 0
scoreboard players set @s originsInWaterLow4 0
execute at @s if score @s originsInWaterLow1 matches 0 positioned ~0.3 ~ ~0.3 if predicate origins:in_water_type run scoreboard players set @s originsInWaterLow1 1
execute at @s if score @s originsInWaterLow2 matches 0 positioned ~0.3 ~ ~-0.3 if predicate origins:in_water_type run scoreboard players set @s originsInWaterLow2 1
execute at @s if score @s originsInWaterLow3 matches 0 positioned ~-0.3 ~ ~-0.3 if predicate origins:in_water_type run scoreboard players set @s originsInWaterLow3 1
execute at @s if score @s originsInWaterLow4 matches 0 positioned ~-0.3 ~ ~0.3 if predicate origins:in_water_type run scoreboard players set @s originsInWaterLow4 1
scoreboard players set @s originsInWaterLow 1
scoreboard players set @s[scores={originsInWaterLow1=0,originsInWaterLow2=0,originsInWaterLow3=0,originsInWaterLow4=0,}] originsInWaterLow 0

scoreboard players set @s originsInWaterMid 1
execute at @s if score @s originsInWaterMid matches 1 positioned ~0.3 ~1 ~0.3 unless predicate origins:in_water_type positioned ~ ~ ~-0.6 unless predicate origins:in_water_type positioned ~-0.6 ~ ~ unless predicate origins:in_water_type positioned ~ ~ ~0.6 unless predicate origins:in_water_type run scoreboard players set @s originsInWaterMid 0

scoreboard players set @s originsInWaterHigh 1
execute at @s if score @s originsInWaterHigh matches 1 unless predicate origins:is_sneaking positioned ~0.3 ~1.799 ~0.3 unless predicate origins:in_water_type positioned ~ ~ ~-0.6 unless predicate origins:in_water_type positioned ~-0.6 ~ ~ unless predicate origins:in_water_type positioned ~ ~ ~0.6 unless predicate origins:in_water_type run scoreboard players set @s originsInWaterHigh 0
execute at @s if score @s originsInWaterHigh matches 1 if predicate origins:is_sneaking positioned ~0.3 ~1.499 ~0.3 unless predicate origins:in_water_type positioned ~ ~ ~-0.6 unless predicate origins:in_water_type positioned ~-0.6 ~ ~ unless predicate origins:in_water_type positioned ~ ~ ~0.6 unless predicate origins:in_water_type run scoreboard players set @s originsInWaterHigh 0

scoreboard players set @s[scores={originsInWaterLow1=0}] originsWaterType1 0
scoreboard players set @s[scores={originsInWaterLow2=0}] originsWaterType2 0
scoreboard players set @s[scores={originsInWaterLow3=0}] originsWaterType3 0
scoreboard players set @s[scores={originsInWaterLow4=0}] originsWaterType4 0

execute at @s if score @s originsInWaterLow1 matches 1 if block ~0.3 ~ ~0.3 #origins:waterloggable run scoreboard players set @s originsWaterType1 8
execute at @s if score @s originsInWaterLow2 matches 1 if block ~0.3 ~ ~-0.3 #origins:waterloggable run scoreboard players set @s originsWaterType2 8
execute at @s if score @s originsInWaterLow3 matches 1 if block ~-0.3 ~ ~-0.3 #origins:waterloggable run scoreboard players set @s originsWaterType3 8
execute at @s if score @s originsInWaterLow4 matches 1 if block ~-0.3 ~ ~0.3 #origins:waterloggable run scoreboard players set @s originsWaterType4 8
execute at @s if score @s originsInWaterLow1 matches 1 if block ~0.3 ~ ~0.3 minecraft:water[level=0] run scoreboard players set @s originsWaterType1 8
execute at @s if score @s originsInWaterLow2 matches 1 if block ~0.3 ~ ~-0.3 minecraft:water[level=0] run scoreboard players set @s originsWaterType2 8
execute at @s if score @s originsInWaterLow3 matches 1 if block ~-0.3 ~ ~-0.3 minecraft:water[level=0] run scoreboard players set @s originsWaterType3 8
execute at @s if score @s originsInWaterLow4 matches 1 if block ~-0.3 ~ ~0.3 minecraft:water[level=0] run scoreboard players set @s originsWaterType4 8

execute at @s if score @s originsInWaterLow1 matches 1 if block ~0.3 ~ ~0.3 minecraft:water[level=1] run scoreboard players set @s originsWaterType1 7
execute at @s if score @s originsInWaterLow2 matches 1 if block ~0.3 ~ ~-0.3 minecraft:water[level=1] run scoreboard players set @s originsWaterType2 7
execute at @s if score @s originsInWaterLow3 matches 1 if block ~-0.3 ~ ~-0.3 minecraft:water[level=1] run scoreboard players set @s originsWaterType3 7
execute at @s if score @s originsInWaterLow4 matches 1 if block ~-0.3 ~ ~0.3 minecraft:water[level=1] run scoreboard players set @s originsWaterType4 7

execute at @s if score @s originsInWaterLow1 matches 1 if block ~0.3 ~ ~0.3 minecraft:water[level=2] run scoreboard players set @s originsWaterType1 6
execute at @s if score @s originsInWaterLow2 matches 1 if block ~0.3 ~ ~-0.3 minecraft:water[level=2] run scoreboard players set @s originsWaterType2 6
execute at @s if score @s originsInWaterLow3 matches 1 if block ~-0.3 ~ ~-0.3 minecraft:water[level=2] run scoreboard players set @s originsWaterType3 6
execute at @s if score @s originsInWaterLow4 matches 1 if block ~-0.3 ~ ~0.3 minecraft:water[level=2] run scoreboard players set @s originsWaterType4 6

execute at @s if score @s originsInWaterLow1 matches 1 if block ~0.3 ~ ~0.3 minecraft:water[level=3] run scoreboard players set @s originsWaterType1 5
execute at @s if score @s originsInWaterLow2 matches 1 if block ~0.3 ~ ~-0.3 minecraft:water[level=3] run scoreboard players set @s originsWaterType2 5
execute at @s if score @s originsInWaterLow3 matches 1 if block ~-0.3 ~ ~-0.3 minecraft:water[level=3] run scoreboard players set @s originsWaterType3 5
execute at @s if score @s originsInWaterLow4 matches 1 if block ~-0.3 ~ ~0.3 minecraft:water[level=3] run scoreboard players set @s originsWaterType4 5

execute at @s if score @s originsInWaterLow1 matches 1 if block ~0.3 ~ ~0.3 minecraft:water[level=4] run scoreboard players set @s originsWaterType1 4
execute at @s if score @s originsInWaterLow2 matches 1 if block ~0.3 ~ ~-0.3 minecraft:water[level=4] run scoreboard players set @s originsWaterType2 4
execute at @s if score @s originsInWaterLow3 matches 1 if block ~-0.3 ~ ~-0.3 minecraft:water[level=4] run scoreboard players set @s originsWaterType3 4
execute at @s if score @s originsInWaterLow4 matches 1 if block ~-0.3 ~ ~0.3 minecraft:water[level=4] run scoreboard players set @s originsWaterType4 4

execute at @s if score @s originsInWaterLow1 matches 1 if block ~0.3 ~ ~0.3 minecraft:water[level=5] run scoreboard players set @s originsWaterType1 3
execute at @s if score @s originsInWaterLow2 matches 1 if block ~0.3 ~ ~-0.3 minecraft:water[level=5] run scoreboard players set @s originsWaterType2 3
execute at @s if score @s originsInWaterLow3 matches 1 if block ~-0.3 ~ ~-0.3 minecraft:water[level=5] run scoreboard players set @s originsWaterType3 3
execute at @s if score @s originsInWaterLow4 matches 1 if block ~-0.3 ~ ~0.3 minecraft:water[level=5] run scoreboard players set @s originsWaterType4 3

execute at @s if score @s originsInWaterLow1 matches 1 if block ~0.3 ~ ~0.3 minecraft:water[level=6] run scoreboard players set @s originsWaterType1 2
execute at @s if score @s originsInWaterLow2 matches 1 if block ~0.3 ~ ~-0.3 minecraft:water[level=6] run scoreboard players set @s originsWaterType2 2
execute at @s if score @s originsInWaterLow3 matches 1 if block ~-0.3 ~ ~-0.3 minecraft:water[level=6] run scoreboard players set @s originsWaterType3 2
execute at @s if score @s originsInWaterLow4 matches 1 if block ~-0.3 ~ ~0.3 minecraft:water[level=6] run scoreboard players set @s originsWaterType4 2

execute at @s if score @s originsInWaterLow1 matches 1 if block ~0.3 ~ ~0.3 minecraft:water[level=7] run scoreboard players set @s originsWaterType1 1
execute at @s if score @s originsInWaterLow2 matches 1 if block ~0.3 ~ ~-0.3 minecraft:water[level=7] run scoreboard players set @s originsWaterType2 1
execute at @s if score @s originsInWaterLow3 matches 1 if block ~-0.3 ~ ~-0.3 minecraft:water[level=7] run scoreboard players set @s originsWaterType3 1
execute at @s if score @s originsInWaterLow4 matches 1 if block ~-0.3 ~ ~0.3 minecraft:water[level=7] run scoreboard players set @s originsWaterType4 1

execute if score @s originsWaterType1 >= @s originsWaterType2 if score @s originsWaterType1 >= @s originsWaterType3 if score @s originsWaterType1 >= @s originsWaterType4 store result score @s originsWaterTypeMax run scoreboard players get @s originsWaterType1
execute if score @s originsWaterType2 >= @s originsWaterType1 if score @s originsWaterType2 >= @s originsWaterType3 if score @s originsWaterType2 >= @s originsWaterType4 store result score @s originsWaterTypeMax run scoreboard players get @s originsWaterType2
execute if score @s originsWaterType3 >= @s originsWaterType1 if score @s originsWaterType3 >= @s originsWaterType2 if score @s originsWaterType3 >= @s originsWaterType4 store result score @s originsWaterTypeMax run scoreboard players get @s originsWaterType3
execute if score @s originsWaterType4 >= @s originsWaterType1 if score @s originsWaterType4 >= @s originsWaterType2 if score @s originsWaterType4 >= @s originsWaterType3 store result score @s originsWaterTypeMax run scoreboard players get @s originsWaterType4