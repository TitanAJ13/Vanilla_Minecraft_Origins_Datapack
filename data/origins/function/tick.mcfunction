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

execute as @a[tag=Avian] run function origins:avian with storage origins:storage Settings.Avian

execute as @a[tag=Blazeborn] run function origins:blazeborn with storage origins:storage Settings.Blazeborn
execute as @e[type=marker,tag=BlazeSpawn,tag=!SpawnFound,tag=!SpawnNotFound] at @s run function origins:nether_spawn_recurse
execute as @e[type=marker,tag=BlazeSpawn,tag=SpawnNotFound] run function origins:nether_spawn_not_found
execute as @e[type=marker,tag=BlazeSpawn,tag=SpawnFound] run function origins:nether_spawn_obstruction with entity @s data

execute as @a[tag=Bumblebee] run function origins:bumblebee with storage origins:storage Settings.Bumblebee
execute as @a store result score @s originsScale run attribute @s minecraft:scale get 100

execute as @a[tag=Elytrian] run function origins:elytrian with storage origins:storage Settings.Elytrian

execute as @a[tag=Enderian] run function origins:enderian with storage origins:storage Settings.Enderian

execute as @a[tag=Feline] run function origins:feline with storage origins:storage Settings.Feline

execute as @a[tag=Fox] run function origins:fox with storage origins:storage Settings.Fox

execute as @a[tag=Inchling] run function origins:inchling with storage origins:storage Settings.Inchling

execute as @a[tag=Merling] run function origins:merling with storage origins:storage Settings.Merling

function origins:root_advancements

execute as @a run function origins:velocity_tracker

execute unless data storage origins:storage Players run data modify storage origins:storage Players set value []
execute as @a run function origins:store_player with entity @s
execute as @a run function origins:store_origin with entity @s

function origins:fix_settings

tag @a[scores={originsDeathCount1=1..}] add Died
scoreboard players set @a originsDeathCount1 0

execute as @e[type=player,tag=Died] run function origins:respawn with entity @s
execute as @a[tag=SearchingDefault] at @s run function origins:default_spawn_recurse with entity @s

#tag @a[tag=Jumped] remove Jumped
#tag @a[tag=Sneaked] remove Sneaked
#tag @a[tag=Sprinted] remove Sprinted