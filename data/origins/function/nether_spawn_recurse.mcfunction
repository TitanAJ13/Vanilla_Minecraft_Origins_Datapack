execute store result score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsPosY run data get entity @s[tag=!SpawnFound,tag=!SpawnNotFound] Pos[1]
execute if score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsPosY matches ..31 run return run tag @s add SpawnNotFound

execute if predicate origins:air_cube run scoreboard players set @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch2 -1
execute if predicate origins:air_cube run function origins:nether_spawn_floor
scoreboard players add @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch1 1
scoreboard players operation @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch1 %= 169 originsConstant
scoreboard players operation @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch1_1 = @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch1
scoreboard players operation @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch1_1 %= 13 originsConstant

execute if score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch1_1 matches 0..11 run tp @s[tag=!SpawnFound,tag=!SpawnNotFound] ~1 ~ ~
execute if score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch1_1 matches 12 unless score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch1 matches 168 run tp @s[tag=!SpawnFound,tag=!SpawnNotFound] ~-12 ~ ~1
execute if score @s[tag=!SpawnFound,tag=!SpawnNotFound] originsSpawnSearch1 matches 168 run tp @s[tag=!SpawnFound,tag=!SpawnNotFound] ~-12 ~-1 ~-12

#execute as @s[tag=!SpawnFound,tag=!SpawnNotFound] at @s[tag=!SpawnFound,tag=!SpawnNotFound] run setblock ~ ~ ~ minecraft:oak_slab
execute as @s[tag=!SpawnFound,tag=!SpawnNotFound] at @s[tag=!SpawnFound,tag=!SpawnNotFound] run function origins:nether_spawn_recurse