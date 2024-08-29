attribute @s minecraft:gravity base set 0.08
attribute @s minecraft:scale base set 1
attribute @s minecraft:jump_strength base set 0.41999998688697815
attribute @s minecraft:fall_damage_multiplier base set 1
attribute @s minecraft:safe_fall_distance base set 3
attribute @s minecraft:max_health base set 20.0
attribute @s minecraft:movement_speed base set 0.100000001490116119384765625
attribute @s minecraft:attack_damage modifier remove origins:fire_strength
attribute @s minecraft:attack_damage modifier remove origins:air_strength
attribute @s minecraft:attack_damage modifier remove origins:water_strength
attribute @s minecraft:attack_damage modifier remove origins:underdog_strength
attribute @s minecraft:movement_speed modifier remove origins:underdog_speed
attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:entity_interaction_range base set 3
attribute @s minecraft:submerged_mining_speed base set 0.2
attribute @s minecraft:block_break_speed base set 1
attribute @s minecraft:attack_speed base set 10
attribute @s minecraft:step_height base set 0.6
tag @s remove Died
tag @s remove Jumped
tag @s remove Primed
tag @s remove SpawnFound
scoreboard players reset @s originsBeeFloat
scoreboard players reset @s originsCooldownTimer
scoreboard players reset @s originsDamageDealt1
scoreboard players reset @s originsDamageDealt2
scoreboard players reset @s originsDamageTaken
scoreboard players reset @s originsDamageTaken1
scoreboard players reset @s originsDamageTaken2
scoreboard players reset @s originsJumped
scoreboard players reset @s originsThrewPearl
execute if items entity @s armor.chest elytra[minecraft:unbreakable={show_in_tooltip:0b},minecraft:custom_name="{\"text\":\"Elytrian Wings\",\"italic\":false,\"color\":\"gold\"}",minecraft:lore=["{\"text\":\"The glorious unbreakable\",\"italic\":false}","{\"text\":\"wings of an Elytrian\",\"italic\":false}","{\"text\":\"Cannot be taken off\",\"color\":\"red\",\"italic\":false}"]] run item replace entity @s armor.chest with air