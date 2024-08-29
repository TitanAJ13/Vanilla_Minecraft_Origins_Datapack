execute as @s[scores={originsFloat=0}] run function origins:fall_slowly with storage origins:storage Settings.Bumblebee.FallMechanics
function origins:float with storage origins:storage Settings.Bumblebee.FloatMechanics

$function origins:inflict_effect {Id:"minecraft:poison",Duration:$(PoisonDuration)}

$function origins:water_strength {Multiplier:$(WaterStrengthMultiplier)}

attribute @s minecraft:scale base set 0.8

attribute @s minecraft:max_health base set 14.0