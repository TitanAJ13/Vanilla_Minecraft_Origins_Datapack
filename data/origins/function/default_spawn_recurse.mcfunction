$execute unless score @s originsDefaultSpawnBase matches 1 unless entity @e[type=marker,tag=DefaultSpawnBase,nbt={data:{Owner:$(UUID)}}] run return 0
$execute unless score @s originsDefaultSpawnBase matches 1 run kill @e[type=marker,tag=DefaultSpawnBase,nbt={data:{Owner:$(UUID)}}]
execute unless score @s originsDefaultSpawnBase matches 1 run function origins:default_spawn_search
execute unless score @s originsDefaultSpawnBase matches 1 unless entity @s[tag=SearchingDefault] run return run function origins:to_stored_gamemode
$execute unless score @s originsDefaultSpawnBase matches 1 run summon marker ~ ~1 ~ {Tags:["DefaultSearchUp","DefaultSpawnSearch"],data:{Owner:$(UUID)}}
$execute unless score @s originsDefaultSpawnBase matches 1 run summon marker ~ ~-1 ~ {Tags:["DefaultSearchDown","DefaultSpawnSearch"],data:{Owner:$(UUID)}}
$execute unless score @s originsDefaultSpawnBase matches 1 store result score @e[type=marker,tag=DefaultSearchUp,nbt={data:{Owner:$(UUID)}},limit=1] originsConstant run data get storage origins:storage Settings.DimensionData.$(Dimension).Max
$execute unless score @s originsDefaultSpawnBase matches 1 store result score @e[type=marker,tag=DefaultSearchDown,nbt={data:{Owner:$(UUID)}},limit=1] originsConstant run data get storage origins:storage Settings.DimensionData.$(Dimension).Min
$execute unless score @s originsDefaultSpawnBase matches 1 at @e[type=marker,tag=DefaultSpawnSearch,nbt={data:{Owner:$(UUID)}}] run function origins:default_spawn_search
$execute unless score @s originsDefaultSpawnBase matches 1 unless entity @s[tag=SearchingDefault] run kill @e[type=marker,tag=DefaultSpawnSearch,nbt={data:{Owner:$(UUID)}}]
execute unless score @s originsDefaultSpawnBase matches 1 unless entity @s[tag=SearchingDefault] run return run function origins:to_stored_gamemode
$execute unless score @s originsDefaultSpawnBase matches 1 run kill @e[type=marker,tag=DefaultSpawnBase,nbt={data:{Owner:$(UUID)}}]
execute unless score @s originsDefaultSpawnBase matches 1 run return run scoreboard players set @s originsDefaultSpawnBase 1

$execute as @e[type=marker,tag=DefaultSearchUp,nbt={data:{Owner:$(UUID)}}] at @s run tp @s ~ ~1 ~
$execute as @e[type=marker,tag=DefaultSearchUp,nbt={data:{Owner:$(UUID)}}] store result score @s originsDefaultSpawnBase run data get entity @s Pos[1]
$execute as @e[type=marker,tag=DefaultSearchUp,nbt={data:{Owner:$(UUID)}}] if score @s originsDefaultSpawnBase > @s originsConstant run kill @s
$execute as @e[type=marker,tag=DefaultSearchDown,nbt={data:{Owner:$(UUID)}}] at @s run tp @s ~ ~-1 ~
$execute as @e[type=marker,tag=DefaultSearchDown,nbt={data:{Owner:$(UUID)}}] store result score @s originsDefaultSpawnBase run data get entity @s Pos[1]
$execute as @e[type=marker,tag=DefaultSearchDown,nbt={data:{Owner:$(UUID)}}] if score @s originsDefaultSpawnBase < @s originsConstant run kill @s

$execute unless entity @e[type=marker,tag=DefaultSpawnSearch,nbt={data:{Owner:$(UUID)}}] run tellraw @s {"text":"No Unobstructed Spawn Found","color":"red"}
$execute unless entity @e[type=marker,tag=DefaultSpawnSearch,nbt={data:{Owner:$(UUID)}}] run function origins:tp_valid_world_spawn with storage origins:storage Players[{UUID:$(UUID)}].LastValidWorldSpawn
$execute unless entity @e[type=marker,tag=DefaultSpawnSearch,nbt={data:{Owner:$(UUID)}}] run return run tag @s remove SearchingDefault

$execute at @e[type=marker,tag=DefaultSpawnSearch,nbt={data:{Owner:$(UUID)}}] run function origins:default_spawn_search
$execute unless entity @s[tag=SearchingDefault] run kill @e[type=marker,tag=DefaultSpawnSearch,nbt={data:{Owner:$(UUID)}}]
execute unless entity @s[tag=SearchingDefault] run return run function origins:to_stored_gamemode
function origins:default_spawn_recurse with entity @s