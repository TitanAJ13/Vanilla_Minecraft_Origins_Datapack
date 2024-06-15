execute if predicate origins:is_sneaking run scoreboard players set @s originsHeight 15
execute unless predicate origins:is_sneaking run scoreboard players set @s originsHeight 18
scoreboard players set @s originsWidth 3
scoreboard players operation @s originsHeight *= @s originsScale
scoreboard players operation @s originsWidth *= @s originsScale
scoreboard players remove @s originsHeight 1
$execute at @s run summon marker ~ ~ ~ {Tags:["WaterCheck"],data:{Owner:$(UUID)}}
$execute store result entity @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}},limit=1] data.DeltaX double 0.001 run scoreboard players get @s originsWidth
$execute store result entity @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}},limit=1] data.DeltaZ double 0.001 run scoreboard players get @s originsWidth
$execute store result entity @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}},limit=1] data.DeltaY double 0.001 run scoreboard players get @s originsHeight
$scoreboard players operation @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}}] originsHeight = @s originsHeight
$execute store result score @s originsInWater as @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}}] at @s positioned ~ ~ ~ run function origins:water_recurse1 with entity @s data

execute if score @s originsInWater matches 1 run return run function origins:water_recurse3 with entity @s

$execute store result entity @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}},limit=1] data.DeltaX double -0.001 run scoreboard players get @s originsWidth
$scoreboard players operation @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}}] originsHeight = @s originsHeight
$tp @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}},limit=1] @s
$execute store result score @s originsInWater as @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}}] at @s positioned ~ ~ ~ run function origins:water_recurse1 with entity @s data

execute if score @s originsInWater matches 1 run return run function origins:water_recurse3 with entity @s

$execute store result entity @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}},limit=1] data.DeltaZ double -0.001 run scoreboard players get @s originsWidth
$scoreboard players operation @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}}] originsHeight = @s originsHeight
$tp @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}},limit=1] @s
$execute store result score @s originsInWater as @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}}] at @s positioned ~ ~ ~ run function origins:water_recurse1 with entity @s data

execute if score @s originsInWater matches 1 run return run function origins:water_recurse3 with entity @s

$execute store result entity @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}},limit=1] data.DeltaX double 0.001 run scoreboard players get @s originsWidth
$scoreboard players operation @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}}] originsHeight = @s originsHeight
$tp @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}},limit=1] @s
$execute store result score @s originsInWater as @e[tag=WaterCheck,nbt={data:{Owner:$(UUID)}}] at @s positioned ~ ~ ~ run function origins:water_recurse1 with entity @s data

execute if score @s originsInWater matches 1 run return run function origins:water_recurse3 with entity @s
$kill @e[type=marker,tag=WaterCheck,nbt={data:{Owner:$(UUID)}}]
return 0