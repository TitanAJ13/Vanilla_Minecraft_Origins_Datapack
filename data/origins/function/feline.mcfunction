attribute @s minecraft:generic.fall_damage_multiplier base set 0

function origins:sprint_jump with storage origins:storage Settings.Feline.SprintJumpMechanics

execute at @s anchored eyes positioned ^ ^ ^ unless predicate origins:in_water_type run effect give @s minecraft:night_vision 1 1 true

attribute @s minecraft:generic.max_health base set 18.0