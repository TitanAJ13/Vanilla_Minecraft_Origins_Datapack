execute at @s anchored eyes positioned ^ ^ ^ store result score @s originsBreathingWater summon marker at @s run function origins:point_in_water
kill @e[tag=WaterChecked,type=marker]
scoreboard players add @s[scores={originsBreathingWater=1,originsAirTimer=..299}] originsAirTimer 5
execute unless score @s originsAirTimer matches -20..300 run scoreboard players set @s originsAirTimer 300

$execute if score 1 originsConstant matches $(AffectedByRespiration) store result score @s originsRespirationLevel run attribute @s minecraft:oxygen_bonus get
$execute if score 0 originsConstant matches $(AffectedByRespiration) run scoreboard players set @s originsRespirationLevel 0
scoreboard players add @s originsRespirationLevel 1
scoreboard players set @s originsRespirationDivider 1000000000
scoreboard players operation @s originsRespirationDivider /= @s originsRespirationLevel

execute as @s[scores={originsBreathingWater=0,originsAirTimer=-19..}] if predicate origins:random_respiration at @s unless predicate origins:in_rain run scoreboard players remove @s originsAirTimer 1
$execute as @s[scores={originsBreathingWater=0,originsAirTimer=-19..}] if predicate origins:random_respiration at @s if score 1 originsConstant matches $(BetterInRain) if predicate origins:in_rain if predicate {"condition":"random_chance","chance": $(RainOxygenUseChance)} run scoreboard players remove @s originsAirTimer 1
$execute as @s[scores={originsBreathingWater=0,originsAirTimer=-19..}] if predicate origins:random_respiration at @s if score 0 originsConstant matches $(BetterInRain) if predicate origins:in_rain run scoreboard players remove @s originsAirTimer 1
$damage @s[scores={originsBreathingWater=0,originsAirTimer=-20}] $(SuffocationDamage) minecraft:generic
scoreboard players set @s[scores={originsBreathingWater=0,originsAirTimer=-20}] originsAirTimer -1

title @s[scores={originsAirTimer=300,originsBreathingWater=0}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=274..299}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=270..273}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=244..269}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=240..243}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=214..239}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=210..213}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=184..209}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=180..183}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=154..179}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=150..153}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=124..149}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=120..123}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=94..119}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=90..93}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=64..89}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=60..63}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce\u2b58\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=34..59}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=30..33}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce\u2b58","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=4..29}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2b58","bold":false,"color":"aqua"}]
title @s[scores={originsAirTimer=1..3}] actionbar [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"\u2bce","bold":false,"color":"aqua"}]

title @s[scores={originsAirTimer=0}] actionbar {"text":" "}
title @s[scores={originsAirTimer=300,originsBreathingWater=1}] actionbar {"text":" "}