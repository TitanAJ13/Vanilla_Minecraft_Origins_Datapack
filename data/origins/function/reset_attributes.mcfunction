attribute @s minecraft:generic.gravity base set 0.08
attribute @s minecraft:generic.scale base set 1
attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
attribute @s minecraft:generic.fall_damage_multiplier base set 1
attribute @s minecraft:generic.max_health base set 20.0
attribute @s minecraft:generic.movement_speed base set 0.100000001490116119384765625
attribute @s minecraft:generic.attack_damage modifier remove origins:fire_strength
attribute @s minecraft:generic.attack_damage modifier remove origins:air_strength
attribute @s minecraft:generic.attack_damage modifier remove origins:underdog_strength
attribute @s minecraft:generic.movement_speed remove origins:underdog_speed
attribute @s minecraft:player.block_interaction_range base set 4.5
attribute @s minecraft:player.entity_interaction_range base set 3
tag @s remove Died
tag @s remove Jumped
tag @s remove Primed
scoreboard players reset @s originsBeeFloat
scoreboard players reset @s originsCooldownTimer
scoreboard players reset @s originsDamageDealt1
scoreboard players reset @s originsDamageDealt2
scoreboard players reset @s originsDamageTaken
scoreboard players reset @s originsDamageTaken1
scoreboard players reset @s originsDamageTaken2
scoreboard players reset @s originsJumped
scoreboard players reset @s originsThrewPearl