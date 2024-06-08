function origins:fall_slowly {InitialGravity:0.08,InitialJump:0.41999998688697815,InitialFallDamage:1,InitialFallHeight:3,SlowGravity:0.04,SlowJump:0.30917,SlowFallDamage:0.75,SlowFallHeight:6}

function origins:change_movement_speed {Speed:0.125}

execute if predicate origins:is_morning run function origins:lay_egg with entity @s

execute if data entity @s SleepingX if score @s originsPosY matches ..85999 as @s run function origins:kick_sleep {Message:"Must sleep at or above y=86"}