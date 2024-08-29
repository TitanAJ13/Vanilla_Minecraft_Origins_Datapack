$attribute @s minecraft:gravity base set $(InitialGravity)
$attribute @s minecraft:jump_strength base set $(InitialJump)
$attribute @s minecraft:fall_damage_multiplier base set $(InitialFallDamage)
$attribute @s minecraft:safe_fall_distance base set $(InitialFallHeight)
$execute if score 1 originsConstant matches $(StopInRain) if predicate origins:in_rain run return 0
$execute unless predicate origins:is_sneaking unless predicate origins:in_water run attribute @s minecraft:gravity base set $(SlowGravity)
$execute unless predicate origins:is_sneaking unless predicate origins:in_water run attribute @s minecraft:jump_strength base set $(SlowJump)
$execute unless predicate origins:is_sneaking unless predicate origins:in_water run attribute @s minecraft:fall_damage_multiplier base set $(SlowFallDamage)
$execute unless predicate origins:is_sneaking unless predicate origins:in_water run attribute @s minecraft:safe_fall_distance base set $(SlowFallHeight)