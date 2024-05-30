$execute as @s[tag=!PearlTP] at @s unless entity @e[type=ender_pearl,nbt={UUID:$(PearlID)}] run tag @s add PearlTP
execute as @s[tag=PearlTP] run data modify entity @s data.PearlX set from entity @s Pos[0]
execute as @s[tag=PearlTP] run data modify entity @s data.PearlY set from entity @s Pos[1]
execute as @s[tag=PearlTP] run data modify entity @s data.PearlZ set from entity @s Pos[2]
execute as @s[tag=PearlTP] run function origins:no_damage_pearl_tp2 with entity @s data