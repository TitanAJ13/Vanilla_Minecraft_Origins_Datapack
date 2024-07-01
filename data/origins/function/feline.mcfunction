attribute @s minecraft:generic.fall_damage_multiplier base set 0

attribute @s minecraft:generic.jump_strength base set 0.41999998688697815

execute as @s[scores={originsCooldownTimer=..0}] if predicate origins:is_sprinting run tag @s add Primed
$attribute @s[tag=Primed] minecraft:generic.jump_strength base set $(SprintJumpStrength)
$scoreboard players set @s[tag=Primed,tag=Jumped] originsCooldownTimer $(SprintJumpCooldown)
$execute unless score 0 originsConstant matches $(SprintJumpCooldown).. run scoreboard players add @s[tag=Primed,tag=Jumped,scores={originsCooldownTimer=$(SprintJumpCooldown)}] originsCooldownTimer 20
tag @s[tag=Primed,tag=Jumped] add ShowCooldown
tag @s[tag=Jumped] remove Jumped
tag @s[tag=Primed] remove Primed

execute at @s anchored eyes positioned ^ ^ ^ unless predicate origins:in_water_type run effect give @s minecraft:night_vision 1 1 true

attribute @s minecraft:generic.max_health base set 18.0