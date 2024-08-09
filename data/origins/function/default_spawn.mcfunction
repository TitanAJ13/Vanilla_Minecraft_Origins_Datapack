gamemode spectator @s
stopsound @s * minecraft:block.portal.travel
$execute in $(SpawnDimension) run tp @s $(SpawnX) $(SpawnY) $(SpawnZ)

$execute at @s run summon marker ~ ~ ~ {Tags:["DefaultSpawnBase"],data:{Owner:$(UUID)}}
scoreboard players reset @s originsDefaultSpawnBase
tag @s remove Died
tag @s add SearchingDefault