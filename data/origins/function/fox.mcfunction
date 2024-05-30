attribute @s minecraft:generic.fall_damage_multiplier base set 0
attribute @s minecraft:generic.movement_speed base set 0.125
attribute @s[scores={originsHealth=5..}] minecraft:generic.movement_speed modifier remove origins:underdog_speed
attribute @s[scores={originsHealth=5..}] minecraft:generic.attack_damage modifier remove origins:underdog_strength
attribute @s[scores={originsHealth=..4}] minecraft:generic.movement_speed modifier add origins:underdog_speed 0.25 add_multiplied_total
attribute @s[scores={originsHealth=..4}] minecraft:generic.attack_damage modifier add origins:underdog_strength 0.125 add_multiplied_total

attribute @s minecraft:generic.scale base set 0.8
attribute @s minecraft:generic.max_health base set 12.0