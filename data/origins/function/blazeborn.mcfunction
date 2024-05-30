effect give @s minecraft:fire_resistance 1 0 true
effect clear @s minecraft:poison
effect clear @s minecraft:hunger
attribute @s[tag=SpawnFound] minecraft:generic.gravity base set 0.08
attribute @s[tag=SpawnFound] minecraft:generic.jump_strength base set 0.41999998688697815
attribute @s[tag=SpawnFound] minecraft:generic.movement_speed base set 0.100000001490116119384765625
attribute @s minecraft:generic.attack_damage modifier remove origins:air_strength

execute if predicate origins:is_on_fire run attribute @s minecraft:generic.attack_damage modifier add origins:fire_strength 0.25 add_multiplied_total
execute unless predicate origins:is_on_fire run attribute @s minecraft:generic.attack_damage modifier remove origins:fire_strength
execute at @s if predicate origins:in_water unless predicate origins:in_rain run damage @s 1 origins:waterburn
execute at @s if predicate origins:in_rain unless predicate origins:in_water run damage @s 1 origins:waterburn
execute at @s if predicate origins:in_rain if predicate origins:in_water run damage @s 1 origins:waterburn

execute as @s run function origins:nether_spawn with entity @s

tag @s[scores={originsDeathCount1=1..}] add Died
scoreboard players set @s originsDeathCount1 0