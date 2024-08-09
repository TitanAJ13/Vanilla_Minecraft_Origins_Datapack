execute if data entity @s SpawnX run return run tag @s remove Died

$execute store result storage origins:storage Players[{UUID:$(UUID)}].LastValidWorldSpawn.X int 1 run data get entity @s Pos[0]
$execute store result storage origins:storage Players[{UUID:$(UUID)}].LastValidWorldSpawn.Y int 1 run data get entity @s Pos[1]
$execute store result storage origins:storage Players[{UUID:$(UUID)}].LastValidWorldSpawn.Z int 1 run data get entity @s Pos[2]
execute store result score @s originsStoredGamemode run data get entity @s playerGameType
$data modify storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.UUID set value $(UUID)
$execute if data storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.SpawnX if data storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.SpawnY if data storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.SpawnZ if data storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.SpawnDimension as @s run function origins:secondary_spawn_check with storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn
$data remove storage origins:storage Players[{UUID:$(UUID)}].SecondarySpawn.UUID
execute unless entity @s[tag=Died] run return 1

execute unless score @s originsStoredGamemode matches 0..3 store result score @s originsStoredGamemode run data get entity @s playerGameType
$execute store result score oUWS originsConstant run data get storage origins:storage Players[{UUID:$(UUID)}].UseWorldSpawn
$execute unless score oUWS originsConstant matches 0 run return run function origins:tp_valid_world_spawn with storage origins:storage Players[{UUID:$(UUID)}].LastValidWorldSpawn
scoreboard players reset oUWS originsConstant

execute unless score @s originsStoredGamemode matches 0..3 store result score @s originsStoredGamemode run data get entity @s playerGameType
$data modify storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.UUID set value $(UUID)
$execute if data storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.SpawnX if data storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.SpawnY if data storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.SpawnZ if data storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.SpawnDimension as @s run return run function origins:default_spawn with storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn
$data remove storage origins:storage Players[{UUID:$(UUID)}].DefaultSpawn.UUID

$tellraw @a [{"text":"An Error has Occurred with Respawning ","color":"red"},{"selector":"@s"},{"text":"\nCheck for Malformed Spawn Data in each of:\n","color":"red"},{"text":" origins:storage ","color":"white"},{"text":"Players","color":"aqua"},{"text":"[{","color":"white"},{"text":"UUID: ","color":"aqua"},{"text":"$(UUID) ","color":"gold"},{"text":"}].","color":"white"},{"text":"PrimarySpawn\n","color":"aqua"},{"text":" origins:storage ","color":"white"},{"text":"Players","color":"aqua"},{"text":"[{","color":"white"},{"text":"UUID: ","color":"aqua"},{"text":"$(UUID) ","color":"gold"},{"text":"}].","color":"white"},{"text":"SecondarySpawn\n","color":"aqua"},{"text":" origins:storage ","color":"white"},{"text":"Players","color":"aqua"},{"text":"[{","color":"white"},{"text":"UUID: ","color":"aqua"},{"text":"$(UUID) ","color":"gold"},{"text":"}].","color":"white"},{"text":"DefaultSpawn","color":"aqua"}]
$return run function origins:tp_valid_world_spawn with storage origins:storage Players[{UUID:$(UUID)}].LastValidWorldSpawn