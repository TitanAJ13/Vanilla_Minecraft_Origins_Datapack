gamemode spectator @s
stopsound @s * minecraft:block.portal.travel
$execute in $(SpawnDimension) run tp @s $(SpawnX) $(SpawnY) $(SpawnZ)

execute at @s positioned ~ ~ ~ if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~ ~ ~-1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~-1 ~ ~ if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~ ~ ~1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~1 ~ ~ if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~-1 ~ ~-1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~1 ~ ~-1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~-1 ~ ~1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~1 ~ ~1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s

execute at @s positioned ~ ~-1 ~ if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~ ~-1 ~-1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~-1 ~-1 ~ if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~ ~-1 ~1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~1 ~-1 ~ if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~-1 ~-1 ~-1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~1 ~-1 ~-1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~-1 ~-1 ~1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~1 ~-1 ~1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s

execute at @s positioned ~ ~1 ~ if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~ ~1 ~-1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~-1 ~1 ~ if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~ ~1 ~1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~1 ~1 ~ if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~-1 ~1 ~-1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~1 ~1 ~-1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~-1 ~1 ~1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s
execute at @s positioned ~1 ~1 ~1 if predicate origins:valid_spawn_area run return run function origins:secondary_respawn with entity @s