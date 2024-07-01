attribute @s minecraft:generic.fall_damage_multiplier base set 0
$attribute @s minecraft:generic.gravity base set $(Gravity)
execute at @s if predicate origins:in_water run attribute @s minecraft:generic.gravity base set 0.08
attribute @s minecraft:generic.scale base set 0.25
$attribute @s minecraft:player.block_interaction_range base set $(BlockReach)
$attribute @s minecraft:player.entity_interaction_range base set $(EntityReach)
$attribute @s minecraft:generic.attack_speed base set $(AttackSpeed)
$attribute @s minecraft:player.block_break_speed base set $(MiningSpeed)
attribute @s minecraft:generic.max_health base set 10
$attribute @s minecraft:generic.step_height base set $(StepHeight)