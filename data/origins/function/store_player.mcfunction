$execute unless data storage origins:storage Players[{UUID:$(UUID)}] run data modify storage origins:storage Players append value {UUID:$(UUID)}
$execute unless data storage origins:storage Players[{UUID:$(UUID)}].UseWorldSpawn run data modify storage origins:storage Players[{UUID:$(UUID)}].UseWorldSpawn set value 1b
$execute unless data storage origins:storage Players[{UUID:$(UUID)}].LastValidWorldSpawn run data modify storage origins:storage Players[{UUID:$(UUID)}].LastValidWorldSpawn set value {}
$execute unless data storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn run data modify storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn set value {}
$execute unless data storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn run data modify storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn set value {}
$execute unless data storage origins:storage Players[{UUID:$(UUID)}].PrimarySpawn run data modify storage origins:storage Players[{UUID:$(UUID)}].PrimarySpawn set value {}
$execute unless data entity @s SpawnX run data modify storage origins:storage Players[{UUID:$(UUID)}].PrimarySpawn set value {}
$execute if data entity @s SpawnX run data modify storage origins:storage Players[{UUID:$(UUID)}].PrimarySpawn.SpawnX set from entity @s SpawnX
$execute if data entity @s SpawnY run data modify storage origins:storage Players[{UUID:$(UUID)}].PrimarySpawn.SpawnY set from entity @s SpawnY
$execute if data entity @s SpawnZ run data modify storage origins:storage Players[{UUID:$(UUID)}].PrimarySpawn.SpawnZ set from entity @s SpawnZ
$execute if data entity @s SpawnDimension run data modify storage origins:storage Players[{UUID:$(UUID)}].PrimarySpawn.SpawnDimension set from entity @s SpawnDimension