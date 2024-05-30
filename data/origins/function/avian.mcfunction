attribute @s minecraft:generic.gravity base set 0.08
attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
attribute @s minecraft:generic.fall_damage_multiplier base set 1
attribute @s minecraft:generic.attack_damage modifier remove origins:fire_strength
attribute @s minecraft:generic.attack_damage modifier remove origins:air_strength
execute unless predicate origins:is_sneaking unless predicate origins:in_water run attribute @s minecraft:generic.gravity base set 0.04
execute unless predicate origins:is_sneaking unless predicate origins:in_water run attribute @s minecraft:generic.jump_strength base set 0.30917
execute unless predicate origins:is_sneaking unless predicate origins:in_water run attribute @s minecraft:generic.fall_damage_multiplier base set 0
execute run attribute @s minecraft:generic.movement_speed base set 0.125
execute if predicate origins:is_morning run function origins:lay_egg with entity @s

execute if data entity @s SleepingX if score @s originsPosY matches ..85999 run function origins:kick_sleep