$execute if predicate origins:in_water run attribute @s minecraft:attack_damage modifier add origins:water_strength $(Multiplier) add_multiplied_total
$execute at @s if predicate origins:in_rain run attribute @s minecraft:attack_damage modifier add origins:water_strength $(Multiplier) add_multiplied_total
execute at @s unless predicate origins:in_water unless predicate origins:in_rain run attribute @s minecraft:attack_damage modifier remove origins:water_strength