$execute as @s at @s positioned $(InitialSpawnX) $(InitialSpawnY) $(InitialSpawnZ) if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~-1 ~ #origins:valid_blocks run data modify entity @s Pos[0] set from entity @s data.InitialSpawnX
$execute as @s at @s positioned $(InitialSpawnX) $(InitialSpawnY) $(InitialSpawnZ) if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~-1 ~ #origins:valid_blocks run data modify entity @s Pos[1] set from entity @s data.InitialSpawnY
$execute as @s at @s positioned $(InitialSpawnX) $(InitialSpawnY) $(InitialSpawnZ) if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~-1 ~ #origins:valid_blocks run data modify entity @s Pos[2] set from entity @s data.InitialSpawnZ

execute at @s unless block ~ ~ ~ minecraft:air run tag @s remove SpawnFound
execute at @s unless block ~ ~1 ~ minecraft:air run tag @s remove SpawnFound
execute at @s unless block ~ ~-1 ~ #origins:valid_blocks run tag @s remove SpawnFound