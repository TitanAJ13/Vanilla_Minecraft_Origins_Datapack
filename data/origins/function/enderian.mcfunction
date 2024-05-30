attribute @s minecraft:player.block_interaction_range base set 5.625
attribute @s minecraft:player.entity_interaction_range base set 3.75
attribute @s minecraft:generic.gravity base set 0.08
attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
attribute @s minecraft:generic.movement_speed base set 0.100000001490116119384765625
attribute @s minecraft:generic.attack_damage modifier remove origins:air_strength
attribute @s minecraft:generic.attack_damage modifier remove origins:fire_strength

function origins:pacify_endermen with entity @s
execute as @s[scores={originsThrewPearl=1..}] run function origins:threw_no_damage_pearl with entity @s
scoreboard players set @s[scores={originsThrewPearl=1..}] originsThrewPearl 0

#execute if items entity @s weapon minecraft:bow run function origins:drop_holding with entity @s
#execute if items entity @s weapon minecraft:crossbow run function origins:drop_holding with entity @s
#execute if items entity @s weapon.offhand minecraft:bow run function origins:drop_shield with entity @s
#execute if items entity @s weapon.offhand minecraft:crossbow run function origins:drop_shield with entity @s


execute at @s if predicate origins:in_water unless predicate origins:in_rain run damage @s 1 origins:waterburn
execute at @s if predicate origins:in_rain unless predicate origins:in_water run damage @s 1 origins:waterburn
execute at @s if predicate origins:in_rain if predicate origins:in_water run damage @s 1 origins:waterburn