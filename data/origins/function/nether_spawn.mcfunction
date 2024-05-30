$execute as @a[tag=Blazeborn,tag=!SpawnFound] run tp @s @e[type=marker,tag=SpawnFound,tag=BlazeSpawn,nbt={data:{Owner:$(UUID)}},limit=1]
$execute as @a[tag=Blazeborn,tag=!SpawnFound] at @s if entity @e[type=marker,tag=SpawnFound,tag=BlazeSpawn,nbt={data:{Owner:$(UUID)}},distance=..0.1] run tag @s add SpawnFound
$execute as @a[tag=Blazeborn,tag=SpawnFound,tag=Stay1] at @s if entity @e[type=marker,tag=SpawnFound,tag=BlazeSpawn,nbt={data:{Owner:$(UUID)}},distance=..0.1] run tag @s remove Stay1

$execute as @e[type=player,tag=Blazeborn,tag=SpawnFound,tag=Died] unless data entity @s SpawnX run tp @s @e[type=marker,tag=SpawnFound,tag=BlazeSpawn,nbt={data:{Owner:$(UUID)}},limit=1]
execute as @e[type=player,tag=Blazeborn,tag=SpawnFound,tag=Died] unless data entity @s SpawnX run stopsound @s * minecraft:block.portal.travel
tag @e[type=player,tag=Blazeborn,tag=Died] remove Died