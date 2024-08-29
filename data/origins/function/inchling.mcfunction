attribute @s minecraft:fall_damage_multiplier base set 0
$attribute @s minecraft:gravity base set $(Gravity)
execute at @s if predicate origins:in_water run attribute @s minecraft:gravity base set 0.08
attribute @s minecraft:scale base set 0.25
$attribute @s minecraft:block_interaction_range base set $(BlockReach)
$attribute @s minecraft:entity_interaction_range base set $(EntityReach)
$attribute @s minecraft:attack_speed base set $(AttackSpeed)
$attribute @s minecraft:block_break_speed base set $(MiningSpeed)
attribute @s minecraft:max_health base set 10
$attribute @s minecraft:step_height base set $(StepHeight)