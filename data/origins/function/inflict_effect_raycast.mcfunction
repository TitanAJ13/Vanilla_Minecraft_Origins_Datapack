tag @s remove Attacked
scoreboard players operation oIEMax originsInflictEffectPriority > @e[scores={originsInflictEffectPriority=1..}] originsInflictEffectPriority
$execute as @e[scores={originsInflictEffectPriority=1..}] if score @s originsInflictEffectPriority = oIEMax originsInflictEffectPriority run effect give @s $(Id) $(Duration) 1 false

scoreboard players reset @e[scores={originsInflictEffectPriority=-1..}] originsInflictEffectPriority
scoreboard players reset oIEMax originsInflictEffectPriority