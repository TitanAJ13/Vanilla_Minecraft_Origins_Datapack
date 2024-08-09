$execute store result storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.SpawnX int 1 run data get entity @s Pos[0]
$execute store result storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.SpawnY int 1 run data get entity @s Pos[1]
$execute store result storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.SpawnZ int 1 run data get entity @s Pos[2]
$data modify storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.SpawnDimension set from entity @s Dimension