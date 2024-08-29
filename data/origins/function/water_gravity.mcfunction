$attribute @s minecraft:gravity base set $(BaseGravity)
$execute if predicate origins:in_water run attribute @s minecraft:gravity base set $(SinkGravity)