$execute at @s if predicate origins:in_water unless predicate origins:in_rain run damage @s $(Amount) generic
$execute at @s if predicate origins:in_rain unless predicate origins:in_water run damage @s $(Amount) generic
$execute at @s if predicate origins:in_rain if predicate origins:in_water run damage @s $(Amount) generic