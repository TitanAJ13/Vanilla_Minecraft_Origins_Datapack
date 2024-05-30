execute as @s at @s run scoreboard players set @e[nbt={HurtTime:10s},distance=..5] originsBeePoisonPriority 0
scoreboard players set @s originsBeePoisonPriority -1
execute as @s at @s anchored eyes positioned ^ ^ ^0.2 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 13
execute as @s at @s anchored eyes positioned ^ ^ ^0.6 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 12
execute as @s at @s anchored eyes positioned ^ ^ ^1 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 11
execute as @s at @s anchored eyes positioned ^ ^ ^1.4 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 10
execute as @s at @s anchored eyes positioned ^ ^ ^1.8 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 9
execute as @s at @s anchored eyes positioned ^ ^ ^2.2 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 8
execute as @s at @s anchored eyes positioned ^ ^ ^2.6 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 7
execute as @s at @s anchored eyes positioned ^ ^ ^3 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 6
execute as @s at @s anchored eyes positioned ^ ^ ^3.4 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 5
execute as @s at @s anchored eyes positioned ^ ^ ^3.8 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 4
execute as @s at @s anchored eyes positioned ^ ^ ^4.2 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 3
execute as @s at @s anchored eyes positioned ^ ^ ^4.6 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 2
execute as @s at @s anchored eyes positioned ^ ^ ^5 run scoreboard players set @e[scores={originsBeePoisonPriority=0},dx=0,dy=0,dz=0,limit=1] originsBeePoisonPriority 1
tag @s remove Attacked
execute as @s at @s run effect give @e[scores={originsBeePoisonPriority=13},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=12},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=12..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=11},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=11..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=10},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=10..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=9},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=9..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=8},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=8..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=7},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=7..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=6},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=6..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=5},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=5..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=4},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=4..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=3},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=3..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=2},distance=..5,limit=1] minecraft:poison 2 1 false
execute as @s at @s unless entity @e[scores={originsBeePoisonPriority=2..13},distance=..5] run effect give @e[scores={originsBeePoisonPriority=1},distance=..5,limit=1] minecraft:poison 2 1 false

scoreboard players reset @e[scores={originsBeePoisonPriority=-1..13}] originsBeePoisonPriority