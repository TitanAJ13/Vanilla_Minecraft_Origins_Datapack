$function origins:air_strength {Multiplier:$(AirStrengthMultiplier)}

execute unless items entity @s armor.chest elytra run tag @s add Died
execute as @s[tag=Died] if items entity @s armor.chest #minecraft:chest_armor run function origins:drop_chestplate with entity @s
execute as @s[tag=Died] run item replace entity @s armor.chest with elytra[minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name="{\"text\":\"Elytrian Wings\",\"italic\":false,\"color\":\"gold\"}",minecraft:lore=["{\"text\":\"The glorious unbreakable\",\"italic\":false}","{\"text\":\"wings of an Elytrian\",\"italic\":false}","{\"text\":\"Cannot be taken off\",\"color\":\"red\",\"italic\":false}"],minecraft:enchantments={show_in_tooltip:0b,levels:{"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}}]
tag @s[tag=Died] remove Died

function origins:launch with storage origins:storage Settings.Elytrian.LaunchMechanics

execute if items entity @s armor.head #origins:heavy_armor run function origins:drop_helmet with entity @s
execute if items entity @s armor.legs #origins:heavy_armor run function origins:drop_leggings with entity @s
execute if items entity @s armor.feet #origins:heavy_armor run function origins:drop_boots with entity @s

execute if predicate origins:elytrian_increased_fall run attribute @s minecraft:generic.fall_damage_multiplier base set 1.125
execute unless predicate origins:elytrian_increased_fall run attribute @s minecraft:generic.fall_damage_multiplier base set 1

execute unless items entity @s inventory.0 #origins:light_armor unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",components:{"minecraft:custom_data":{NoChestplate:0b}}}]}] run function origins:replace_elytra_enchantments

execute unless predicate origins:elytrian_chestplate_active run return run function origins:replace_elytra_enchantments

execute if predicate origins:elytrian_chestplate_active if items entity @s inventory.0 #origins:light_armor if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",components:{"minecraft:custom_data":{NoChestplate:1b}}}]}] run function origins:replace_elytra_enchantments

execute as @s[scores={originsDamageTaken=1..}] if items entity @s inventory.0 #origins:light_armor run tag @s add Damaged
scoreboard players operation @s[tag=Damaged] originsDamageTaken1 = @s[tag=Damaged] originsDamageTaken
scoreboard players set @s[tag=Damaged] originsDamageTaken 0
scoreboard players operation @s[tag=Damaged] originsDamageTaken1 /= 40 originsConstant
scoreboard players set @s[tag=Damaged,scores={originsDamageTaken1=0}] originsDamageTaken1 1
execute as @s[tag=Damaged] store result score @s originsDamageTaken2 run data get entity @s Inventory[{Slot:9b}].components."minecraft:damage"
scoreboard players operation @s[tag=Damaged] originsDamageTaken2 += @s[tag=Damaged] originsDamageTaken1
scoreboard players operation @s[tag=Damaged] originsDamageTaken2 -= @s[tag=Damaged] originsElytrianChestplateDurability
scoreboard players operation @s[tag=Damaged] originsDamageTaken2 *= -1 originsConstant
scoreboard players add @s[tag=Damaged] originsElytrianChestplateUnbreaking 1
scoreboard players set @s[tag=Damaged] originsElytrianChestplateDivider 1000000000
execute as @s[tag=Damaged,scores={originsElytrianChestplateUnbreaking=1..}] run scoreboard players operation @s originsElytrianChestplateDivider /= @s originsElytrianChestplateUnbreaking

execute as @s[tag=Damaged] if items entity @s inventory.0 #origins:light_armor if predicate origins:random_unbreaking run function origins:damage_chestplate

scoreboard players reset @s originsElytrianChestplateDivider
scoreboard players reset @s originsDamageTaken
scoreboard players reset @s originsDamageTaken1
scoreboard players reset @s originsDamageTaken2
tag @s[tag=Damaged] remove Damaged

function origins:inflict_effect {Id:"minecraft:levitation",Duration:5}