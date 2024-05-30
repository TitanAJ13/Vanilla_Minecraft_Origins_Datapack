attribute @s[scores={originsBeeFloat=0}] minecraft:generic.gravity base set 0.08
attribute @s[scores={originsBeeFloat=0}] minecraft:generic.jump_strength base set 0.41999998688697815
attribute @s minecraft:generic.movement_speed base set 0.100000001490116119384765625
attribute @s minecraft:generic.attack_damage modifier remove origins:fire_strength
attribute @s minecraft:generic.attack_damage modifier remove origins:air_strength
attribute @s[scores={originsBeeFloat=0}] minecraft:generic.fall_damage_multiplier base set 1
execute as @s[scores={originsBeeFloat=0}] at @s unless predicate origins:is_sneaking unless predicate origins:in_water unless predicate origins:in_rain run attribute @s minecraft:generic.gravity base set 0.04
execute as @s[scores={originsBeeFloat=0}] at @s unless predicate origins:is_sneaking unless predicate origins:in_water unless predicate origins:in_rain run attribute @s minecraft:generic.jump_strength base set 0.30917
execute as @s[scores={originsBeeFloat=0}] at @s unless predicate origins:is_sneaking unless predicate origins:in_water unless predicate origins:in_rain run attribute @s minecraft:generic.fall_damage_multiplier base set 0

execute as @s[scores={originsBeeFloat=0},nbt={OnGround:0b}] unless predicate {"condition":"entity_properties","entity":"this","predicate":{"vehicle":{}}} at @s positioned ~ ~0.05 ~ if predicate origins:bee_float unless predicate origins:in_water unless predicate origins:in_rain unless predicate origins:is_flying run scoreboard players set @s originsBeeFloat 4
execute as @s[scores={originsBeeFloat=1..2}] at @s if predicate origins:is_sneaking unless predicate origins:in_water unless predicate origins:in_rain run scoreboard players set @s originsBeeFloat 3
execute as @s[scores={originsBeeFloat=3},nbt={OnGround:0b}] at @s unless predicate origins:is_sneaking unless predicate origins:in_water unless predicate origins:in_rain run scoreboard players set @s originsBeeFloat 4
execute as @s[scores={originsBeeFloat=1..3}] if predicate origins:in_water run scoreboard players set @s originsBeeFloat 0
execute as @s[scores={originsBeeFloat=1..3}] at @s if predicate origins:in_rain run scoreboard players set @s originsBeeFloat 0
execute as @s[scores={originsBeeFloat=1..3}] if predicate origins:is_flying run scoreboard players set @s originsBeeFloat 0
execute as @s[scores={originsBeeFloat=1..3}] if predicate {"condition":"entity_properties","entity":"this","predicate":{"vehicle":{}}} run scoreboard players set @s originsBeeFloat 0
execute as @s[scores={originsBeeFloat=1..3},nbt={OnGround:1b}] run scoreboard players set @s originsBeeFloat 0

attribute @s[scores={originsBeeFloat=3}] minecraft:generic.gravity base set 0.01
attribute @s[scores={originsBeeFloat=1}] minecraft:generic.gravity base set 0.00
attribute @s[scores={originsBeeFloat=2}] minecraft:generic.gravity base set -0.00

execute unless score @s originsBeeFloat matches 1..2 run scoreboard players set @s originsBeeFloatTimer 0
scoreboard players add @s[scores={originsBeeFloat=1..2}] originsBeeFloatTimer 1
scoreboard players set @s[scores={originsBeeFloat=1,originsBeeFloatTimer=20}] originsBeeFloat 2
scoreboard players set @s[scores={originsBeeFloat=2,originsBeeFloatTimer=40}] originsBeeFloat 1
scoreboard players operation @s[scores={originsBeeFloat=1..2,originsBeeFloatTimer=40..}] originsBeeFloatTimer %= 40 originsConstant

scoreboard players operation @s originsDamageDealt2 -= @s originsDamageDealt1
tag @s[scores={originsDamageDealt2=..-1}] add Attacked
scoreboard players operation @s originsDamageDealt2 = @s originsDamageDealt1
execute as @s[tag=Attacked] run function origins:bee_poison

execute as @s[scores={originsBeeFloat=4}] at @s run function origins:stop_momentum with entity @s
scoreboard players set @s[scores={originsBeeFloat=4}] originsBeeFloat 1
execute unless score @s originsBeeFloat matches 0..4 run scoreboard players set @s originsBeeFloat 0
attribute @s[scores={originsBeeFloat=1..4}] minecraft:generic.fall_damage_multiplier base set 0

attribute @s minecraft:generic.scale base set 0.8
attribute @s minecraft:generic.max_health base set 14.0
execute if predicate origins:in_water run attribute @s minecraft:generic.attack_damage modifier add origins:water_weakness -0.25 add_multiplied_total
execute at @s if predicate origins:in_rain run attribute @s minecraft:generic.attack_damage modifier add origins:water_weakness -0.25 add_multiplied_total
execute at @s unless predicate origins:in_water unless predicate origins:in_rain run attribute @s minecraft:generic.attack_damage modifier remove origins:water_weakness