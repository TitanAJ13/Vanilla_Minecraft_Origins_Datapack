effect give @s minecraft:fire_resistance 1 0 true

function origins:effect_immune {Id:"minecraft:poison"}
function origins:effect_immune {Id:"minecraft:hunger"}

attribute @s[tag=SpawnFound] minecraft:gravity base set 0.08
attribute @s[tag=SpawnFound] minecraft:jump_strength base set 0.41999998688697815
attribute @s[tag=SpawnFound] minecraft:movement_speed base set 0.100000001490116119384765625

$function origins:fire_strength {Multiplier:$(FireStrengthMultiplier)}

$function origins:water_rain_damage {Amount:$(WaterDamage)}

$execute if score 0 originsConstant matches $(NetherSpawn) run tag @s remove Died
$execute if score 1 originsConstant matches $(NetherSpawn) as @s run function origins:nether_spawn with entity @s