execute as @a[tag=!StartChoice] run function origins:make_choice

execute as @a[tag=!Elytrian,tag=!Fox,tag=!Human,tag=!Inchling,tag=!Merling,tag=!Rabbit] run function origins:height_in_block
execute as @a[tag=!Elytrian,tag=!Fox,tag=!Human,tag=!Inchling,tag=!Merling,tag=!Rabbit] run function origins:touching_water

execute as @e[type=ender_pearl,tag=NoDamage] run function origins:no_damage_pearl with entity @s
execute as @e[type=marker,tag=NoDamPearl] run function origins:no_damage_pearl_tp with entity @s data

execute as @a[tag=Avian] run function origins:avian

execute as @a[tag=Blazeborn] run function origins:blazeborn
execute as @e[type=marker,tag=BlazeSpawn,tag=!SpawnFound,tag=!SpawnNotFound] at @s run function origins:nether_spawn_recurse
execute as @e[type=marker,tag=BlazeSpawn,tag=SpawnNotFound] run function origins:nether_spawn_not_found
execute as @e[type=marker,tag=BlazeSpawn,tag=SpawnFound] run function origins:nether_spawn_obstruction with entity @s data

execute as @a[tag=Bumblebee] run function origins:bumblebee

execute as @a[tag=Elytrian] run function origins:elytrian

execute as @a[tag=Enderian] run function origins:enderian
