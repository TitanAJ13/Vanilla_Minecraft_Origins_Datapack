execute as @s[scores={originsFloat=0},nbt={OnGround:0b}] unless predicate {"condition":"entity_properties","entity":"this","predicate":{"vehicle":{}}} at @s positioned ~0.3 ~0.01 ~0.3 if predicate origins:bee_float positioned ~-0.6 ~ ~ if predicate origins:bee_float positioned ~ ~ ~-0.6 if predicate origins:bee_float positioned ~0.6 ~ ~ if predicate origins:bee_float at @s unless predicate origins:in_water unless predicate origins:is_flying run scoreboard players set @s originsFloat 3
execute as @s[scores={originsFloat=1}] if predicate origins:is_sneaking unless predicate origins:in_water run scoreboard players set @s originsFloat 2
execute as @s[scores={originsFloat=2},nbt={OnGround:0b}] unless predicate origins:is_sneaking unless predicate origins:in_water run scoreboard players set @s originsFloat 3
execute as @s[scores={originsFloat=1..2}] if predicate origins:in_water run scoreboard players set @s originsFloat 0
execute as @s[scores={originsFloat=1..2}] if predicate origins:is_flying run scoreboard players set @s originsFloat 0
execute as @s[scores={originsFloat=1..2}] if predicate {"condition":"entity_properties","entity":"this","predicate":{"vehicle":{}}} run scoreboard players set @s originsFloat 0
execute as @s[scores={originsFloat=1..2},nbt={OnGround:1b}] run scoreboard players set @s originsFloat 0

$execute if score 1 originsConstant matches $(StopInRain) at @s if predicate origins:in_rain run scoreboard players set @s originsFloat 0
$execute if score 1 originsConstant matches $(StopOnFire) if predicate origins:is_on_fire run scoreboard players set @s originsFloat 0
$execute if score 1 originsConstant matches $(StopInDay) if predicate origins:is_day run scoreboard players set @s originsFloat 0
$execute if score 1 originsConstant matches $(StopInNight) if predicate origins:is_night run scoreboard players set @s originsFloat 0

$attribute @s[scores={originsFloat=2}] minecraft:gravity base set $(DescendAcceleration)
attribute @s[scores={originsFloat=1}] minecraft:gravity base set 0.00

execute as @s[scores={originsFloat=3}] at @s run function origins:stop_momentum with entity @s
scoreboard players set @s[scores={originsFloat=3}] originsFloat 1
execute unless score @s originsFloat matches 0..3 run scoreboard players set @s originsFloat 0
attribute @s[scores={originsFloat=1..3}] minecraft:fall_damage_multiplier base set 0