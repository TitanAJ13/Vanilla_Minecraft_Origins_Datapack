execute if predicate origins:above_bounds run return run scoreboard players set @s originsCanSeeSky 1
execute unless block ~ ~ ~ #origins:air_types run return run scoreboard players set @s originsCanSeeSky 0
execute as @s positioned ~ ~1 ~ run function origins:check_sky