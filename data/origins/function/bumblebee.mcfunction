execute as @s[scores={originsFloat=0}] run function origins:fall_slowly {InitialGravity:0.08,InitialJump:0.41999998688697815,InitialFallDamage:1,InitialFallHeight:3,StopInRain:1,SlowGravity:0.04,SlowJump:0.30917,SlowFallDamage:0.75,SlowFallHeight:6}
function origins:float {DescendAcceleration:0.02,StopInRain:1,StopOnFire:0,StopInDay:0,StopInNight:0}

function origins:inflict_effect {Id:"minecraft:poison"}

function origins:water_strength {Multiplier:-0.25}

attribute @s minecraft:generic.scale base set 0.8

attribute @s minecraft:generic.max_health base set 14.0