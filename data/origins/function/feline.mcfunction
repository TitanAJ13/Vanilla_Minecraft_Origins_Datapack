attribute @s minecraft:generic.fall_damage_multiplier base set 0
attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
execute if predicate origins:is_sprinting run attribute @s minecraft:generic.jump_strength base set 0.6

execute at @s anchored eyes positioned ^ ^ ^ unless predicate origins:in_water_type run effect give @s minecraft:night_vision 1 1 true

attribute @s minecraft:generic.max_health base set 18.0