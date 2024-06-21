effect give @s minecraft:fire_resistance 1 0 true

function origins:effect_immune {Id:"minecraft:poison"}
function origins:effect_immune {Id:"minecraft:hunger"}

attribute @s[tag=SpawnFound] minecraft:generic.gravity base set 0.08
attribute @s[tag=SpawnFound] minecraft:generic.jump_strength base set 0.41999998688697815
attribute @s[tag=SpawnFound] minecraft:generic.movement_speed base set 0.100000001490116119384765625

function origins:fire_strength {Multiplier:0.25}

function origins:water_rain_damage {Amount:1}

execute as @s run function origins:nether_spawn with entity @s