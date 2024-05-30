attribute @s minecraft:generic.scale base set 1
attribute @s minecraft:generic.gravity base set 0.08
attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
attribute @s minecraft:generic.movement_speed base set 0.100000001490116119384765625
attribute @s minecraft:generic.attack_damage modifier remove origins:fire_strength

execute if predicate origins:in_air run attribute @s minecraft:generic.attack_damage modifier add origins:air_strength 0.125 add_multiplied_total
execute unless predicate origins:in_air run attribute @s minecraft:generic.attack_damage modifier remove origins:air_strength

execute unless items entity @s armor.chest elytra[minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name="{\"text\":\"Elytrian Wings\",\"italic\":false,\"color\":\"gold\"}",minecraft:lore=["{\"text\":\"The glorious unbreakable\",\"italic\":false}","{\"text\":\"wings of an Elytrian\",\"italic\":false}","{\"text\":\"Cannot be taken off\",\"color\":\"red\",\"italic\":false}"]] if items entity @s armor.chest #minecraft:chest_armor run function origins:drop_chestplate with entity @s
execute unless items entity @s armor.chest elytra[minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name="{\"text\":\"Elytrian Wings\",\"italic\":false,\"color\":\"gold\"}",minecraft:lore=["{\"text\":\"The glorious unbreakable\",\"italic\":false}","{\"text\":\"wings of an Elytrian\",\"italic\":false}","{\"text\":\"Cannot be taken off\",\"color\":\"red\",\"italic\":false}"]] run item replace entity @s armor.chest with elytra[minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name="{\"text\":\"Elytrian Wings\",\"italic\":false,\"color\":\"gold\"}",minecraft:lore=["{\"text\":\"The glorious unbreakable\",\"italic\":false}","{\"text\":\"wings of an Elytrian\",\"italic\":false}","{\"text\":\"Cannot be taken off\",\"color\":\"red\",\"italic\":false}"],minecraft:enchantments={show_in_tooltip:0b,levels:{"minecraft:binding_curse":1}}]
execute if items entity @s inventory.0 #minecraft:chest_armor unless items entity @s inventory.0 #origins:heavy_armor run function origins:replace_elytra_enchantments
execute if items entity @s inventory.0 #minecraft:chest_armor unless items entity @s inventory.0 #origins:heavy_armor run function origins:elytrian_chestplate

execute unless items entity @s inventory.0 #minecraft:chest_armor run attribute @s minecraft:generic.armor modifier remove origins:elytrian_chestplate
execute if items entity @s inventory.0 #origins:heavy_armor run attribute @s minecraft:generic.armor modifier remove origins:elytrian_chestplate
execute unless items entity @s inventory.0 #minecraft:chest_armor run item modify entity @s armor.chest {"function":"set_enchantments","enchantments":{"minecraft:binding_curse":1,"minecraft:protection":0,"minecraft:blast_protection":0,"minecraft:fire_protection":0,"minecraft:projectile_protection":0,"minecraft:thorns":0}}
execute if items entity @s inventory.0 #origins:heavy_armor run item modify entity @s armor.chest {"function":"set_enchantments","enchantments":{"minecraft:binding_curse":1,"minecraft:protection":0,"minecraft:blast_protection":0,"minecraft:fire_protection":0,"minecraft:projectile_protection":0,"minecraft:thorns":0}}
execute as @s[scores={originsDamageTaken=1..}] if items entity @s inventory.0 #minecraft:chest_armor unless items entity @s inventory.0 #origins:heavy_armor run tag @s add Damaged
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

execute as @s[tag=Damaged] if items entity @s inventory.0 #minecraft:chest_armor unless items entity @s inventory.0 #origins:heavy_armor if predicate origins:random_unbreaking run function origins:damage_chestplate

scoreboard players reset @s[tag=Damaged] originsElytrianChestplateDivider
scoreboard players reset @s[tag=Damaged] originsDamageTaken1
scoreboard players reset @s[tag=Damaged] originsDamageTaken2
tag @s[tag=Damaged] remove Damaged

execute as @s[scores={originsCooldownTimer=..0},nbt={OnGround:1b,SelectedItem:{id:"minecraft:feather"}}] if predicate origins:is_sneaking run attribute @s minecraft:generic.jump_strength base set 2
execute as @s[scores={originsCooldownTimer=..0},nbt={OnGround:1b,SelectedItem:{id:"minecraft:feather"}}] if predicate origins:is_sneaking run tag @s add Primed
tag @s[tag=Primed,scores={originsJumped=1..,originsCooldownTimer=..0},nbt={SelectedItem:{id:"minecraft:feather"}},predicate=origins:is_sneaking] add Jumped
execute as @s[tag=Jumped] if predicate origins:is_sneaking run scoreboard players set @s originsCooldownTimer 120
execute as @s[tag=Jumped] if predicate origins:is_sneaking run tag @s add ShowCooldown
scoreboard players set @s[scores={originsJumped=1..}] originsJumped 0
tag @s[tag=Jumped] remove Jumped
tag @s[tag=Jumped] remove Primed

execute if items entity @s armor.head #origins:heavy_armor run function origins:drop_helmet with entity @s
execute if items entity @s armor.legs #origins:heavy_armor run function origins:drop_leggings with entity @s
execute if items entity @s armor.feet #origins:heavy_armor run function origins:drop_boots with entity @s

attribute @s minecraft:generic.fall_damage_multiplier base set 1.25