$execute if entity @e[type=marker,tag=BlazeSpawn,tag=SpawnFound,nbt={data:{Owner:$(UUID)}}] run return run tp @s @e[type=marker,tag=BlazeSpawn,tag=SpawnFound,nbt={data:{Owner:$(UUID)}},limit=1]
execute as @s at @s in minecraft:the_nether run tp ~ 128 ~
attribute @s minecraft:generic.gravity base set 0
tellraw @s {"text":"Finding Valid Spawn...","color":"red"}
$execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["BlazeSpawn"],data:{Owner:$(UUID)}}
$execute as @e[type=marker,tag=BlazeSpawn,nbt={data:{Owner:$(UUID)}}] run function origins:chunk_snap
$scoreboard players set @e[type=marker,tag=BlazeSpawn,nbt={data:{Owner:$(UUID)}}] originsSpawnSearch1 -1