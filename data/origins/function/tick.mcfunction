execute as @a[tag=!StartChoice] run function origins:make_choice

execute as @a[scores={originsChoiceType=-13..-1}] run function origins:choice_type
scoreboard players enable @a[scores={originsChoiceType=0..}] originsChoiceType
scoreboard players reset @a[scores={originsChoiceType=0..}] originsChoiceType
scoreboard players enable @a[scores={originsChoiceType=..-14}] originsChoiceType
scoreboard players reset @a[scores={originsChoiceType=..-14}] originsChoiceType

execute as @a run function origins:height_in_block
execute as @a run function origins:touching_water_2 with entity @s

execute as @a at @s positioned ~ ~1 ~ run function origins:check_sky

execute as @e[type=ender_pearl,tag=NoDamage] run function origins:no_damage_pearls with entity @s
execute as @e[type=marker,tag=NoDamPearl] run function origins:no_damage_pearl_tp with entity @s data

execute as @a[tag=Avian] run function origins:avian

execute as @a[tag=Blazeborn] run function origins:blazeborn
execute as @e[type=marker,tag=BlazeSpawn,tag=!SpawnFound,tag=!SpawnNotFound] at @s run function origins:nether_spawn_recurse
execute as @e[type=marker,tag=BlazeSpawn,tag=SpawnNotFound] run function origins:nether_spawn_not_found
execute as @e[type=marker,tag=BlazeSpawn,tag=SpawnFound] run function origins:nether_spawn_obstruction with entity @s data

execute as @a[tag=Bumblebee] run function origins:bumblebee
execute as @a store result score @s originsScale run attribute @s minecraft:generic.scale get 100

execute as @a[tag=Elytrian] run function origins:elytrian

execute as @a[tag=Enderian] run function origins:enderian

execute as @a[tag=Feline] run function origins:feline

execute as @a[tag=Fox] run function origins:fox

execute as @a[tag=Merling] run function origins:merling