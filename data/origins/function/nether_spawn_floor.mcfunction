execute if predicate origins:valid_floor run tag @s add SpawnFound
execute as @s[tag=SpawnFound] unless data entity @s data.InitialSpawnX run data modify entity @s data.InitialSpawnX set from entity @s Pos[0]
execute as @s[tag=SpawnFound] unless data entity @s data.InitialSpawnY run data modify entity @s data.InitialSpawnY set from entity @s Pos[1]
execute as @s[tag=SpawnFound] unless data entity @s data.InitialSpawnZ run data modify entity @s data.InitialSpawnZ set from entity @s Pos[2]
execute as @s[tag=SpawnFound] if data entity @s data.InitialSpawnX at @s run return run forceload add ~ ~
scoreboard players add @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2 1
scoreboard players operation @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2_1 = @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2
scoreboard players operation @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2_1 %= 3 originsConstant
execute if score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2_1 matches 0..1 run tp @s[tag=!SpawnFound,tag=!SpawnNotFound] ~1 ~ ~
execute if score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2_1 matches 2 unless score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2 matches 8 run tp @s[tag=!SpawnFound,tag=!SpawnNotFound] ~-2 ~ ~1

execute if score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2 matches 8 run tp ~-2 ~ ~-2
execute as @s[tag=!SpawnFound,tag=!SpawnNotFound] at @s[tag=!SpawnFound,tag=!SpawnNotFound] unless score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2 matches 8 run function origins:nether_spawn_floor with entity @s[tag=!SpawnFound,tag=!SpawnNotFound]