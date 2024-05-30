attribute @s minecraft:player.block_interaction_range base set 5.625
attribute @s minecraft:player.entity_interaction_range base set 3.75

function origins:pacify_endermen with entity @s
execute as @s[scores={originsThrewPearl=1..}] run function origins:threw_no_damage_pearl with entity @s
scoreboard players set @s[scores={originsThrewPearl=1..}] originsThrewPearl 0

execute at @s if predicate origins:in_water unless predicate origins:in_rain run damage @s 1 origins:waterburn
execute at @s if predicate origins:in_rain unless predicate origins:in_water run damage @s 1 origins:waterburn
execute at @s if predicate origins:in_rain if predicate origins:in_water run damage @s 1 origins:waterburn