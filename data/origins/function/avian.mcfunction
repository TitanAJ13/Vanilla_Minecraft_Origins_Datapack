function origins:fall_slowly with storage origins:storage Settings.Avian.FallMechanics

$function origins:change_movement_speed {Speed:$(MovementSpeed)}

execute if predicate origins:is_morning run function origins:lay_avian_egg with storage origins:storage Settings.Avian

$execute if data entity @s SleepingX if score @s originsPosY matches ..$(SleepHeight)0000 as @s run function origins:kick_sleep {Message:"Must sleep at or above y=$(SleepHeight)"}

execute as @s[scores={originsEggThrown=1..}] run function origins:avian_egg_advancement with entity @s