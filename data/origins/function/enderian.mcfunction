$attribute @s minecraft:player.block_interaction_range base set $(BlockReach)
$attribute @s minecraft:player.entity_interaction_range base set $(EntityReach)

$execute if score 0 originsConstant matches $(CanUseTeams) run function origins:pacify_endermen with entity @s
$execute if score 0 originsConstant matches $(CanUseTeams) run team empty originsDeAggroEndermen
$execute if score 1 originsConstant matches $(CanUseTeams) run function origins:pacify_endermen_teams with entity @s
$execute if score 1 originsConstant matches $(NoPearlDamage) run function origins:no_damage_pearl with entity @s

$function origins:water_rain_damage {Amount:$(WaterDamage)}