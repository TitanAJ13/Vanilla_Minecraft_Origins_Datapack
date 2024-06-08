scoreboard players operation @s originsDamageDealt2 -= @s originsDamageDealt1
tag @s[scores={originsDamageDealt2=..-1}] add Attacked
scoreboard players reset @s originsDamageDealt1
scoreboard players reset @s originsDamageDealt2
$execute as @s[tag=Attacked] run function origins:inflict_effect_raycast {Id:"$(Id)"}