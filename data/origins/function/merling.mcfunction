$function origins:water_gravity {BaseGravity:0.08,SinkGravity: $(SinkGravity)}

effect give @s minecraft:conduit_power 1 0 true
effect give @s minecraft:dolphins_grace 1 0 true

execute if data entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."minecraft:aqua_affinity" run attribute @s[nbt={OnGround:1b}] minecraft:submerged_mining_speed base set 0.25
execute if data entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."minecraft:aqua_affinity" unless predicate origins:is_sneaking run attribute @s[nbt={OnGround:0b}] minecraft:submerged_mining_speed base set 1.25
execute if data entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."minecraft:aqua_affinity" if predicate origins:is_sneaking unless block ~ ~-0.000001 ~ water run attribute @s[nbt={OnGround:0b}] minecraft:submerged_mining_speed base set 0.25

execute unless data entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."minecraft:aqua_affinity" run attribute @s[nbt={OnGround:1b}] minecraft:submerged_mining_speed base set 1
execute unless data entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."minecraft:aqua_affinity" unless predicate origins:is_sneaking run attribute @s[nbt={OnGround:0b}] minecraft:submerged_mining_speed base set 5
execute unless data entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."minecraft:aqua_affinity" if predicate origins:is_sneaking unless block ~ ~-0.000001 ~ water run attribute @s[nbt={OnGround:0b}] minecraft:submerged_mining_speed base set 1

$execute if score 0 originsConstant matches $(LandSuffocation) run scoreboard players set @s[scores={originsAirTimer=..300}] originsAirTimer 300
$execute if score 1 originsConstant matches $(LandSuffocation) as @s[gamemode=!creative,gamemode=!spectator] run function origins:suffocate_on_land with storage origins:storage Settings.Merling.SuffocationMechanics