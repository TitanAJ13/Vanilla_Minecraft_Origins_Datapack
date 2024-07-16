scoreboard players operation @s originsDamageDealt2 -= @s originsDamageDealt1
tag @s[scores={originsDamageDealt2=..-1}] add Attacked
scoreboard players reset @s originsDamageDealt1
scoreboard players reset @s originsDamageDealt2
execute as @s[tag=Attacked] store result score @s originsInflictEffectRange run attribute @s player.entity_interaction_range get 10000
execute as @s[tag=Attacked] store result score @s originsInflictEffectCount run scoreboard players operation @s originsInflictEffectRange /= 125 originsConstant
execute as @s[tag=Attacked] at @s run scoreboard players set @e[nbt={HurtTime:10s}] originsInflictEffectPriority 0
scoreboard players set @s[tag=Attacked] originsInflictEffectPriority -1
$execute as @s[tag=Attacked] at @s anchored eyes positioned ^ ^ ^ run function origins:inflict_effect_recurse {Id:"$(Id)",Duration:$(Duration)}