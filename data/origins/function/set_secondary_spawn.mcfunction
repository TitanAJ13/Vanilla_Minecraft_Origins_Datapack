$execute store result storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.SpawnX int 1 run data get entity @s Pos[0]
$execute store result storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.SpawnY int 1 run data get entity @s Pos[1]
$execute store result storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.SpawnZ int 1 run data get entity @s Pos[2]
$data modify storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.SpawnDimension set from entity @s Dimension