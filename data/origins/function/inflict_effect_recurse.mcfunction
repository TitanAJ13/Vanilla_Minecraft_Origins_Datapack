$execute if entity @s[scores={originsInflictEffectPriority=1..}] run return run function origins:inflict_effect_raycast {Id:"$(Id)",Duration:$(Duration)}
$execute if score @s originsInflictEffectCount matches ..-1 run return run function origins:inflict_effect_raycast {Id:"$(Id)",Duration:$(Duration)}
scoreboard players operation @e[scores={originsInflictEffectPriority=0},dx=0,dy=0,dz=0,limit=1] originsInflictEffectPriority = @s originsInflictEffectCount
scoreboard players remove @s originsInflictEffectCount 1
$execute positioned ^ ^ ^0.025 run function origins:inflict_effect_recurse {Id:"$(Id)",Duration:$(Duration)}