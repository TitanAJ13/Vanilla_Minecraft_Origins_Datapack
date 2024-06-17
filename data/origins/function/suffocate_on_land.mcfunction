$execute at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["WaterBreatheCheck"],data:{Owner:$(UUID)}}
$execute store result score @s originsBreathingWater as @e[tag=WaterBreatheCheck,type=marker,nbt={data:{Owner:$(UUID)}}] at @s run function origins:point_in_water
kill @e[tag=WaterBreatheCheck,type=marker]
scoreboard players add @s[scores={originsBreathingWater=1,originsAirTimer=..299}] originsAirTimer 5
execute unless score @s originsAirTimer matches -20..300 run scoreboard players set @s originsAirTimer 300

execute store result score @s originsRespirationLevel run attribute @s minecraft:generic.oxygen_bonus get
scoreboard players add @s originsRespirationLevel 1
scoreboard players set @s originsRespirationDivider 1000000000
scoreboard players operation @s originsRespirationDivider /= @s originsRespirationLevel

execute as @s[scores={originsBreathingWater=0,originsAirTimer=-19..}] if predicate origins:random_respiration at @s unless predicate origins:in_rain run scoreboard players remove @s originsAirTimer 1
execute as @s[scores={originsBreathingWater=0,originsAirTimer=-19..}] if predicate origins:random_respiration at @s if predicate origins:in_rain if predicate origins:random_20 run scoreboard players remove @s originsAirTimer 1
damage @s[scores={originsBreathingWater=0,originsAirTimer=-20}] 2 minecraft:drown
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