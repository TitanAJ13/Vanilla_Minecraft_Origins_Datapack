$attribute @s minecraft:generic.gravity base set $(BaseGravity)
$execute if predicate origins:in_water run attribute @s minecraft:generic.gravity base set $(SinkGravity)