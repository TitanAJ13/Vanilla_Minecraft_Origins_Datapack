attribute @s minecraft:generic.fall_damage_multiplier base set 0

$attribute @s minecraft:generic.movement_speed base set $(MovementSpeed)

$function origins:underdog_strength {Health: $(UnderdogStartHealth), Multiplier: $(UnderdogStrengthMultiplier)}
$function origins:underdog_speed {Health: $(UnderdogStartHealth), Multiplier: $(UnderdogSpeedMultiplier)}

attribute @s minecraft:generic.scale base set 0.8
attribute @s minecraft:generic.max_health base set 12.0